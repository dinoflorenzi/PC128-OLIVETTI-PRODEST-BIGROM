# PC128-OLIVETTI-PRODEST-BIGROM
## PROJECT OVERVIEW
This is a project is born to build a multi page rom cartridge for my PC 128 OLIVETTI PRODEST HOME COMPUTER.<br/>
I have designed and built two different rom cards based on two different rom chip.<br/>
One rom card is based on at28c256 rom chip, the second is based on sst39f040 flash chip.<br/>
Also i have coded the ASM 6809 routines to manage them.<br/>

## HOW IT STARTED
Many rom cartridge are designed before, but i have got the need to design my version with few simple components, and the possibility to program from pc128 itself.
## START POINT
Thomson computers have an expansion port with the main computer signals, data bus, address bus, chip select, master clock, and analog sound input that is mixed with the main sound generator.<br/>
![](https://github.com/dinoflorenzi/THOMSON-MO-TO-SOUNDCARD/blob/main/COMMON/Expansion_port.jpg)<br/>
## SOUND CHIP SELECTION CRITERION
The SN76489AN first chip selection is based on its simple architecture, 8 bit bus, four channels, up to two write sequences to generates sound or noise.<br/>
The YM2413 second chip selection is also based on its simple architecture, 8 bit bus, nine channels, two write addresses to generates sound with hardware instruments and rythems.<br/>
Single board develepments are better described to the links below or wiki section<br/>
[SN76489AN SOUND CARD DEVELOPMENT](https://github.com/dinoflorenzi/THOMSON-MO-TO-SOUNDCARD/wiki/SN76489AN-MOTO-SOUND-CARD)<br/>
[YM2413 SOUND CARD DEVELOPMENT](https://github.com/dinoflorenzi/THOMSON-MO-TO-SOUNDCARD/wiki/YM2413-MOTO-SOUND-CARD)<br/>
## CONTEMPORARY USAGE
By properly setting card jumpers it changes the address. In this way you can mount two sound cards working  simultaneously.<br/>
The interconnection card is a third-party project.<br/>
The assembly of the cards in this photo is the precious contribution of Benoit Rousseau. He help me to debug the cards on Thomson TO target.<br/>
<img src="https://github.com/dinoflorenzi/THOMSON-MO-TO-SOUNDCARD/blob/main/COMMON/IMG_3648.JPG" width=30%>
<img src="https://github.com/dinoflorenzi/THOMSON-MO-TO-SOUNDCARD/blob/main/COMMON/IMG_3650.JPG" width=30%>
<img src="https://github.com/dinoflorenzi/THOMSON-MO-TO-SOUNDCARD/blob/main/COMMON/IMG_3651.JPG" width=30%><br/>
## SOFTWARE TOOLS
[Kicad](https://www.kicad.org/) and [Freerounting](https://freerouting.org/) to develop schematics and pcb.<br/>
A myself modified DCMOTO emulator with the sound chip drivers to simulate cards and develop/debug playback routines (Unmodified version http://dcmoto.free.fr/emulateur/index.html)<br/>
## RESOURCES
https://en.wikipedia.org/wiki/Texas_Instruments_SN76489<br/>
https://en.wikipedia.org/wiki/Yamaha_YM2413<br/>
http://dcmoto.free.fr/<br/>
https://vgmrips.net/packs/<br/>
https://www.smspower.org/Music/VGMs<br/>
http://atjs.mbnet.fi/mc6809/<br/>
http://map.grauw.nl/resources/sound/texas_instruments_sn76489an.pdf<br/>
http://map.grauw.nl/resources/sound/yamaha_ym2413_ds.pdf<br/>

