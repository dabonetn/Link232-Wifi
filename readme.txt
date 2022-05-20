Link232-Wifi, Swift-L and Swift-T

This project is a merging of the Link232 and Swiftlink RS232 carts combined with the zimodem firmware.

Link232-Wifi
This is a Swiftlink compatible High Speed Uart cartridge for the Commodore 64/128.
Because it's a link232 clone, it only uses 16 bytes of the dXXX address space, and you can set it using the solder jumpers. 
You must cut the dx00 link and then connect the solder jumper you want the new address to be.

Swift-T
This is a Swiftlink compatible internal wifi modem for the c64 longboard.
It plugs into a socket at U2 and then you install the 6526 into the modem board.
Flying leads then connect the IO address (DE00 or DF00) and Dotclock.


Swift-L
This is a Swiftlink compatible internal wifi modem for the C128 flat model.
It plugs into a socket at U2 and then you install the 6526 into the modem board.
Flying leads then connect the IO address (DE00/DF00/Or D700) and Dotclock.


All of them use swiftlink drivers in your favorite terminal program/bbs.
CCGMS/Novaterm/Desterm/etc.. 


Premade units are usually available on ebay from me.

https://www.ebay.com/sch/tndabone/m.html?_nkw=&_armrs=1&_ipg=&_from=

Default for most programs is DE00/NMI


Modem commands are under the Zimodem directory.

I'm merging the Internal Units and the Cartridge version under this page. As all 3 use the same firmware.








Much thanks to Dr. Evil Laboratories for designing the original Swiftlink Cart.
And to Jim Brain for the Link232 design,
And of course Bo Zimmerman for the very excellent Zimodem firmware.


Please see the quick start guide if you bought a prebuilt cart.

Default setting for a new unit from me is.

DE00/NMI

19200 Baud
Hardware Flow Control (CTS/RTS)









The current zimodem firmware is forked from version "3.6.3"

To update to the current firmware use the command

at&u6502


For usage of zimodem, see the readme in the zimodem directory.
Link232-Wifi is based off the ESP-12, not the ESP32, so No esp32 only features will work.



Changes I've made.

In Zimodem.ino I've set 19200 baud as standard, and got rid of the signal inversion while using a ESP8266 module.

Zcommand.ino mainly has me replacing the zimmers.net with dabone.xyz to prevent a update and bricking of the Link232-Wifi.




