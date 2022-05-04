# PC128-OLIVETTI-PRODEST-BIGROM
## PROJECT OVERVIEW
This is a project is born to build a multi page rom cartridge for my PC 128 OLIVETTI PRODEST HOME COMPUTER.<br/>
I have designed and built two different rom cards based on two different rom chip.<br/>
One rom card is based on at28c256 rom chip, the second is based on sst39f040 flash chip.<br/>
Also i have coded the ASM 6809 routines to manage them.<br/>

## HOW IT STARTED
Many rom cartridge are designed before, but i had got the need to design my version with few simple components, and the possibility to program the rom from pc128 itself.
## START POINT
The PC128 computers have a cartridge port with the main computer signals, 8 bit data bus, 16 bit address bus, chip select, master clock.<br/>
![](https://github.com/dinoflorenzi/THOMSON-MO-TO-SOUNDCARD/blob/main/COMMON/Expansion_port.jpg)<br/>
## ROM CHIP SELECTION CRITERION
The AT28C256 first chip selection is based on its simple architecture, 8 bit bus, 15 bit address and is very simple to program. Another good reason is that i had 3 spare component :)<br/>
The SST39F040 second chip selection is also based on its pacakge, pth tecnology, 8 bit bus, and on its 512 kbyte size that permits to switch between 32 pages of 16 kbyte.<br/>
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

