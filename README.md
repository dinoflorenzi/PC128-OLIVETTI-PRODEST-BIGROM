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
![](https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/COMMON/IMG_20220504_184939.jpg )<br/>
## ROM CHIP SELECTION CRITERION
The AT28C256 first chip selection is based on its simple architecture, 8 bit bus, 15 bit address and is very simple to program. Another good reason is that i had 3 spare component in my folder :)<br/>
The SST39F040 second chip selection is also based on its pacakge, pth tecnology, 8 bit bus, and mostly on its 512 kbyte size that permits to switch between 32 pages of 16 kbyte each one.<br/>
Single board develepments are better described to the links below or wiki section<br/>

[SINGLE PAGE ROM CARD DEVELOPMENT]()<br/>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/SINGLE%20PAGE%20VERSION/IMG_20220315_185708.jpg" width=30%>

[MULTI PAGE ROM CARD DEVELOPMENT]()<br/>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/MULTI%20PAGE%20VERSION/IMG_20220428_181833.jpg" width=30%>


## CARTRIDGE USAGE
To do
## PROJECT TARGET
To do
## SOFTWARE TOOLS
[Kicad](https://www.kicad.org/) and [Freerounting](https://freerouting.org/) to develop schematics and pcb.<br/>
## RESOURCES
http://dcmoto.free.fr/documentation/schemas/mo6.png
https://www.mouser.it/datasheet/2/268/doc0006-1108095.pdf
https://www.mouser.it/datasheet/2/268/39%20Series_MPF_MPF__Product%20Brief-373259.pdf
