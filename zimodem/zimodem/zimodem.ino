/*
   Copyright 2016-2019 Bo Zimmerman

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

	   http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
//#define TCP_SND_BUF                     4 * TCP_MSS
#define ZIMODEM_VERSION "3.5.5"
const char compile_date[] = __DATE__ " " __TIME__;
#define DEFAULT_NO_DELAY true
#define null 0

#ifdef ARDUINO_ESP32_DEV
# define ZIMODEM_ESP32
#elif defined(ESP32)
# define ZIMODEM_ESP32
#elif defined(ARDUINO_ESP320)
# define ZIMODEM_ESP32
#elif defined(ARDUINO_NANO32)
# define ZIMODEM_ESP32
#elif defined(ARDUINO_LoLin32)
# define ZIMODEM_ESP32
#elif defined(ARDUINO_ESPea32)
# define ZIMODEM_ESP32
#elif defined(ARDUINO_QUANTUM)
# define ZIMODEM_ESP32
#else
# define ZIMODEM_ESP8266
#endif


#ifdef ZIMODEM_ESP32
# define PIN_FACTORY_RESET GPIO_NUM_0
# define DEFAULT_PIN_DCD GPIO_NUM_14
# define DEFAULT_PIN_CTS GPIO_NUM_13
# define DEFAULT_PIN_RTS GPIO_NUM_15 // unused
# define DEFAULT_PIN_RI GPIO_NUM_32
# define DEFAULT_PIN_DSR GPIO_NUM_12
# define DEFAULT_PIN_DTR GPIO_NUM_27
# define debugPrintf Serial.printf
# define INCLUDE_SD_SHELL true
# define DEFAULT_FCT FCT_DISABLED
# define SerialConfig uint32_t
# define UART_CONFIG_MASK 0x8000000
# define UART_NB_BIT_MASK      0B00001100 | UART_CONFIG_MASK
# define UART_NB_BIT_5         0B00000000 | UART_CONFIG_MASK
# define UART_NB_BIT_6         0B00000100 | UART_CONFIG_MASK
# define UART_NB_BIT_7         0B00001000 | UART_CONFIG_MASK
# define UART_NB_BIT_8         0B00001100 | UART_CONFIG_MASK
# define UART_PARITY_MASK      0B00000011
# define UART_PARITY_NONE      0B00000000
# define UART_NB_STOP_BIT_MASK 0B00110000
# define UART_NB_STOP_BIT_0    0B00000000
# define UART_NB_STOP_BIT_1    0B00010000
# define UART_NB_STOP_BIT_15   0B00100000
# define UART_NB_STOP_BIT_2    0B00110000
# define preEOLN serial.prints
# define echoEOLN serial.write
# define HARD_DCD_HIGH 1
//# define HARD_DCD_LOW 1
#else  // ESP-8266, e.g. ESP-01, ESP-12E, inverted for C64Net WiFi Modem
# define DEFAULT_PIN_DSR 13
# define DEFAULT_PIN_DTR 12
# define DEFAULT_PIN_RI 14
# define DEFAULT_PIN_RTS 4
# define DEFAULT_PIN_CTS 5 // is 0 for ESP-01, see getDefaultCtsPin() below.
# define DEFAULT_PIN_DCD 2
# define DEFAULT_FCT FCT_RTSCTS
//# define RS232_INVERTED 1
# define debugPrintf doNothing
# define preEOLN(...)
# define echoEOLN(...) serial.prints(EOLN)
#endif

#ifdef RS232_INVERTED
# define DEFAULT_DCD_HIGH  HIGH
# define DEFAULT_DCD_LOW  LOW
# define DEFAULT_CTS_HIGH  HIGH
# define DEFAULT_CTS_LOW  LOW
# define DEFAULT_RTS_HIGH  HIGH
# define DEFAULT_RTS_LOW  LOW
# define DEFAULT_RI_HIGH  HIGH
# define DEFAULT_RI_LOW  LOW
# define DEFAULT_DSR_HIGH  HIGH
# define DEFAULT_DSR_LOW  LOW
# define DEFAULT_DTR_HIGH  HIGH
# define DEFAULT_DTR_LOW  LOW
#else
# define DEFAULT_DCD_HIGH  LOW
# define DEFAULT_DCD_LOW  HIGH
# define DEFAULT_CTS_HIGH  LOW
# define DEFAULT_CTS_LOW  HIGH
# define DEFAULT_RTS_HIGH  LOW
# define DEFAULT_RTS_LOW  HIGH
# define DEFAULT_RI_HIGH  LOW
# define DEFAULT_RI_LOW  HIGH
# define DEFAULT_DSR_HIGH  LOW
# define DEFAULT_DSR_LOW  HIGH
# define DEFAULT_DTR_HIGH  LOW
# define DEFAULT_DTR_LOW  HIGH
#endif

#define DEFAULT_BAUD_RATE 19200
#define DEFAULT_SERIAL_CONFIG SERIAL_8N1
#define MAX_PIN_NO 50
#define INTERNAL_FLOW_CONTROL_DIV 380


class ZMode
{
  public:
    virtual void serialIncoming();
    virtual void loop();
};

#include "pet2asc.h"
#include "rt_clock.h"
#include "filelog.h"
#include "serout.h"
#include "connSettings.h"
#include "wificlientnode.h"
#include "stringstream.h"
#include "phonebook.h"
#include "wifiservernode.h"
#include "zstream.h"
#include "proto_http.h"
#include "proto_ftp.h"
#include "zcommand.h"
#include "zconfigmode.h"
#include "zprint.h"

#ifdef INCLUDE_SD_SHELL
#include "proto_xmodem.h"
#include "proto_zmodem.h"
#include "zbrowser.h"
#endif

static WiFiClientNode *conns = null;
static WiFiServerNode *servs = null;
static PhoneBookEntry *phonebook = null;
static bool pinSupport[MAX_PIN_NO];
static bool browseEnabled = false;
static String termType = DEFAULT_TERMTYPE;

static ZMode *currMode = null;
static ZStream streamMode;
//static ZSlip slipMode; // not yet implemented
static ZCommand commandMode;
static ZPrint printMode;
static ZConfig configMode;
#ifdef INCLUDE_SD_SHELL
static ZBrowser browseMode;
#endif
static RealTimeClock zclock(0);

enum BaudState
{
  BS_NORMAL,
  BS_SWITCH_TEMP_NEXT,
  BS_SWITCHED_TEMP,
  BS_SWITCH_NORMAL_NEXT
};

static bool wifiConnected =false;
static String wifiSSI;
static String wifiPW;
static String hostname;
static SerialConfig serialConfig = DEFAULT_SERIAL_CONFIG;
static int baudRate=DEFAULT_BAUD_RATE;
static int dequeSize=1+(DEFAULT_BAUD_RATE/INTERNAL_FLOW_CONTROL_DIV);
static BaudState baudState = BS_NORMAL; 
static unsigned long resetPushTimer=0;
static int tempBaud = -1; // -1 do nothing
static int dcdStatus = LOW;
static int pinDCD = DEFAULT_PIN_DCD;
static int pinCTS = DEFAULT_PIN_CTS;
static int pinRTS = DEFAULT_PIN_RTS;
static int pinDSR = DEFAULT_PIN_DSR;
static int pinDTR = DEFAULT_PIN_DTR;
static int pinRI = DEFAULT_PIN_RI;
static int dcdActive = DEFAULT_DCD_HIGH;
static int dcdInactive = DEFAULT_DCD_LOW;
static int ctsActive = DEFAULT_CTS_HIGH;
static int ctsInactive = DEFAULT_CTS_LOW;
static int rtsActive = DEFAULT_RTS_HIGH;
static int rtsInactive = DEFAULT_RTS_LOW;
static int riActive = DEFAULT_RI_HIGH;
static int riInactive = DEFAULT_RI_LOW;
static int dtrActive = DEFAULT_DTR_HIGH;
static int dtrInactive = DEFAULT_DTR_LOW;
static int dsrActive = DEFAULT_DSR_HIGH;
static int dsrInactive = DEFAULT_DSR_LOW;

static int getDefaultCtsPin()
{
#ifdef ZIMODEM_ESP32
  return DEFAULT_PIN_CTS;
#else
  if((ESP.getFlashChipRealSize()/1024)>=4096) // assume this is a striketerm/esp12e
    return DEFAULT_PIN_CTS;
  else
    return 0;
#endif 
}

static void doNothing(const char* format, ...) 
{
}

static void s_pinWrite(uint8_t pinNo, uint8_t value)
{
  if(pinSupport[pinNo])
  {
    digitalWrite(pinNo, value);
  }
}

static void setHostName(const char *hname)
{
#ifdef ZIMODEM_ESP32
      tcpip_adapter_set_hostname(TCPIP_ADAPTER_IF_STA, hname);
#else
      WiFi.hostname(hname);
#endif
}

static bool connectWifi(const char* ssid, const char* password)
{
  while(WiFi.status() == WL_CONNECTED)
  {
    WiFi.disconnect();
    delay(100);
    yield();
  }
#ifndef ZIMODEM_ESP32
  if(hostname.length() > 0)
    setHostName(hostname.c_str());
#endif
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  if(hostname.length() > 0)
    setHostName(hostname.c_str());
  bool amConnected = (WiFi.status() == WL_CONNECTED) && (strcmp(WiFi.localIP().toString().c_str(), "0.0.0.0")!=0);
  int WiFiCounter = 0;
  while ((!amConnected) && (WiFiCounter < 30))
  {
    WiFiCounter++;
    if(!amConnected)
      delay(500);
    amConnected = (WiFi.status() == WL_CONNECTED) && (strcmp(WiFi.localIP().toString().c_str(), "0.0.0.0")!=0);
  }
  wifiConnected = amConnected;
  if(!amConnected)
    WiFi.disconnect();
  return wifiConnected;
}

static void checkBaudChange()
{
  switch(baudState)
  {
    case BS_SWITCH_TEMP_NEXT:
      changeBaudRate(tempBaud);
      baudState = BS_SWITCHED_TEMP;
      break;
    case BS_SWITCH_NORMAL_NEXT:
      changeBaudRate(baudRate);
      baudState = BS_NORMAL;
      break;
    default:
      break;
  }
}

static void changeBaudRate(int baudRate)
{
  flushSerial(); // blocking, but very very necessary
  delay(500); // give the client half a sec to catch up
  logPrintfln("Baud change to %d.\n",baudRate);
  debugPrintf("Baud change to %d.\n",baudRate);
  dequeSize=1+(baudRate/INTERNAL_FLOW_CONTROL_DIV);
  debugPrintf("Deque constant now: %d\n",dequeSize);
#ifdef ZIMODEM_ESP32
  HWSerial.changeBaudRate(baudRate);
#else
  HWSerial.begin(baudRate, serialConfig);  //Change baud rate
#endif  
}

static void changeSerialConfig(SerialConfig conf)
{
  flushSerial(); // blocking, but very very necessary
  delay(500); // give the client half a sec to catch up
  debugPrintf("Config changing %d.\n",(int)conf);
  dequeSize=1+(baudRate/INTERNAL_FLOW_CONTROL_DIV);
  debugPrintf("Deque constant now: %d\n",dequeSize);
#ifdef ZIMODEM_ESP32
  HWSerial.changeConfig(conf);
#else
  HWSerial.begin(baudRate, conf);  //Change baud rate
#endif  
  debugPrintf("Config changed.\n");
}

static int checkOpenConnections()
{
  int num=WiFiClientNode::getNumOpenWiFiConnections();
  if(num == 0)
  {
    if((dcdStatus == dcdActive)
    &&(dcdStatus != dcdInactive))
    {
      dcdStatus = dcdInactive;
      s_pinWrite(pinDCD,dcdStatus);
      if(baudState == BS_SWITCHED_TEMP)
        baudState = BS_SWITCH_NORMAL_NEXT;
      if(currMode == &commandMode)
        clearSerialOutBuffer();
    }
  }
  else
  {
    if((dcdStatus == dcdInactive)
    &&(dcdStatus != dcdActive))
    {
      dcdStatus = dcdActive;
      s_pinWrite(pinDCD,dcdStatus);
      if((tempBaud > 0) && (baudState == BS_NORMAL))
        baudState = BS_SWITCH_TEMP_NEXT;
    }
  }
  return num;
}

void setup() 
{
  for(int i=0;i<MAX_PIN_NO;i++)
    pinSupport[i]=false;
#ifdef ZIMODEM_ESP32
  Serial.begin(115200); //the debug port
  Serial.setDebugOutput(true);
  debugPrintf("Debug port open and ready.\n");
  for(int i=12;i<=23;i++)
    pinSupport[i]=true;
  for(int i=25;i<=27;i++)
    pinSupport[i]=true;
  for(int i=32;i<=33;i++)
    pinSupport[i]=true;
  pinSupport[36]=true;
  pinSupport[39]=true;
#else
  pinSupport[0]=true;
  pinSupport[2]=true;
  if((ESP.getFlashChipRealSize()/1024)>=4096) // assume this is a strykelink/esp12e
  {
    pinSupport[4]=true;
    pinSupport[5]=true;
    for(int i=9;i<=15;i++)
      pinSupport[i]=true;
    pinSupport[11]=false;
  }
#endif    
  initSDShell();
  currMode = &commandMode;
  if(!SPIFFS.begin())
  {
    SPIFFS.format();
    SPIFFS.begin();
    debugPrintf("SPIFFS Formatted.");
  }
  HWSerial.begin(DEFAULT_BAUD_RATE, DEFAULT_SERIAL_CONFIG);  //Start Serial
  commandMode.loadConfig();
  PhoneBookEntry::loadPhonebook();
  dcdStatus = dcdInactive;
  s_pinWrite(pinDCD,dcdStatus);
  flushSerial();
}

void checkFactoryReset()
{
#ifdef ZIMODEM_ESP32
    if(!digitalRead(PIN_FACTORY_RESET))
    {
      if(resetPushTimer != 1)
      {
        if(resetPushTimer==0)
        {
          resetPushTimer=millis();
          if(resetPushTimer==1)
            resetPushTimer++;
        }
        else
        if((millis() - resetPushTimer) > 5000)
        {
          SPIFFS.remove("/zconfig.txt");
          SPIFFS.remove("/zphonebook.txt");
          SPIFFS.remove("/zlisteners.txt");
          PhoneBookEntry::clearPhonebook();
          SPIFFS.end();
          SPIFFS.format();
          SPIFFS.begin();
          PhoneBookEntry::clearPhonebook();
          if(WiFi.status() == WL_CONNECTED)
            WiFi.disconnect();
          baudRate = DEFAULT_BAUD_RATE;
          commandMode.loadConfig();
          PhoneBookEntry::loadPhonebook();
          dcdStatus = dcdInactive;
          s_pinWrite(pinDCD,dcdStatus);
          wifiSSI="";
          wifiConnected=false;
          delay(500);
          zclock.reset();
          commandMode.reset();
          resetPushTimer=1;
        }
      }
    }
    else
    if(resetPushTimer != 0)
      resetPushTimer=0;
#endif
}

void loop() 
{
  checkFactoryReset();
  if(HWSerial.available())
  {
    currMode->serialIncoming();
  }
  currMode->loop();
  zclock.tick();
}
