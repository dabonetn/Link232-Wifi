Link232-Wifi

This project is a merging of the Link232 and Swiftlink RS232 carts combined with the zimodem firmware.

Is a Swiftlink compatible High Speed Uart cartridge for the Commodore 64/128.

Uses swiftlink drivers in your favorite terminal program/bbs.

Premade units are available on my Tindie store.

https://www.tindie.com/stores/dabone/

Default for most programs is de00/nmi
Because it's a link232 clone, it only uses 16 bytes of the dXXX address space, and you can set it using the solder jumpers. 
You must cut the dx00 link and then connect the solder jumper you want the new address to be.


Modem commands are under the Zimodem directory.



Much thanks to Dr. Evil Laboratories for designing the original Swiftlink Cart.
And to Jim Brain for the Link232 design,
And of course Bo Zimmerman for the very excellent Zimodem firmware.


Please see the quick start guide if you bought a prebuilt cart.

Default setting for a new unit from me is.

DE00/NMI

19200 Baud
Hardware Flow Control (CTS/RTS)









The current zimodem firmware is forked from version "3.5.6"

To update to the current firmware use the command

at&u6502


For usage of zimodem, see the readme in the zimodem directory.
Link232-Wifi is based off the ESP-12, not the ESP32, so No esp32 only features will work.



Changes I've made.

In Zimodem.ino I've set CTS/RTS and 19200 baud as standard, and got rid of the signal inversion while using a ESP8266 module.

Zcommand.ino has many changes, first is replacing the zimmers.net with dabone.xyz to prevent a update and bricking of the Link232-Wifi.
Also bug fixes for DCD on ata connect, and NO CARRIER printing while hardware flow control is enabled.



