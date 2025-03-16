# PC128-OLIVETTI-PRODEST-BIGROM
## PROJECT OVERVIEW
Questo è un progetto nato per realizzare una cartuccia rom multi pagina per il mio PC 128 OLIVETTI PRODEST HOME COMPUTER.
Ho progettato e costruito due diverse schede ROM basate su due diversi chip ROM.
Una scheda ROM è basata sul chip rom at28c256, la seconda è basata sul chip flash sst39f040.
Inoltre ho codificato le routine ASM 6809 per gestirle.<br/>

## COME E' NATO IL PROGETTO
Molte sono le cartucce rom progettate, ma ho avuto la necessità di progettare la mia versione, con pochi semplici componenti e la possibilità di programmare la rom dal pc128 stesso, senza utilizzare strumenti di programmazione esterni.
Infatti, è possibile caricare l'immagine rom da masterizzare, utilizzando un dispositivo a cassetta o tramite connessione seriale a un PC esterno.<br/>
## PORTA PER CARTUCCE
I computer PC128 dispongono di una porta per cartucce con i segnali principali del computer, bus dati a 8 bit, bus indirizzi a 16 bit, chip select, master clock.<br/>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/COMMON/IMG_20220504_184939.jpg" width=45%><br/>
## SCELTA DELLE ROM CHIP
La prima selezione di chip AT28C256 si basa sulla sua architettura semplice, bus a 8 bit, indirizzo a 15 bit ed è molto semplice da programmare. Un altro buon motivo è che avevo 3 componenti di riserva nel mio cassetto :)
La selezione del secondo chip SST39F040 si basa anche sul suo package (DIP32), sulla tecnologia pth, sul bus a 8 bit, e soprattutto sulla sua dimensione di 512 kbyte che permette di commutare tra 32 pagine da 16 kbyte ciascuna.
Gli sviluppi della scheda singola sono meglio descritti nei link sottostanti o nella sezione wiki<br/>

[CARTUCCIA A PAGINA SINGOLA](https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/wiki/Single-Page-Rom)<br/>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/SINGLE%20PAGE%20VERSION/IMG_20220315_185708.jpg" width=30%>

[BIGROM](https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/wiki/BigRom)<br/>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/MULTI%20PAGE%20VERSION/IMG_20220428_181833.jpg" width=30%> <img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/MULTI%20PAGE%20VERSION/IMG_20221126_183600.jpg" width=30%>

### INSTALLAZIONE DELLA BIGROM
La cartuccia si installa nello sportellino centrale del PC128, a computer spento, come mostrato nella foto<br/>
Per l' installazione del software di gestione della bigrom è possibile utilizzare un programmatore utilizzando il file bigrom.eeprom, in tal caso la flash deve essere programmata prima dell' installazione sulla scheda. Altrimenti è possibile caricare il programma di gestione da registratore utilizzando un'audiocassetta su cui deve essere registrato il file audio bigrom.k7.wav. Dopodiché da basic 128 digitare<br/>
CLEAR,&H2FFF<br/>
LOADM"CASS:",,R<br/>
A questo punto bisogna sarà possibile caricare il file bigrom.rom in posizione V.</br>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/MULTI%20PAGE%20VERSION/IMG_20221108_195236.jpg" width=45%><br/>

### FILE MANAGER DELLA BIGROM
Una delle 32 pagine della Bigrom è dedicata al programma di gestione della Bigrom stessa.
La schermata principale visualizza l'elenco dei programmi contenuti nella Bigrom. Basta premere il relativo tasto per scegliere la ROM.
Una volta avviata la ROM per tornare al programma BIGROM bisogna spegnere e riaccendere il computer.<br/>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/MULTI%20PAGE%20VERSION/Main.png" width=45%><br/>
Premendo il tasto STOP dal menu di scelta delle ROMS si entra nel menu di gestione della ROM.<br/>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/MULTI%20PAGE%20VERSION/Manage.png" width=45%><br/>

### CONNESSIONE SERIALE
La connessione seriale sfrutta un UART-USB adapter, che connette il PC128 ad un computer con sistema opperativo windows.
Per il funzionamento del cavo seriale sarà necessario installare i [drivers](https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/tree/main/SERIAL-INTERFACE/Software/WIN_DRIVERS).<br/>E' consigliato l' utilizzo dell' interfaccia CH340 per un discorso di compatibilità.<br/>
Il [cavo](https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/wiki/Serial-Cable) si connette alla porta joystick 2 del PC128 e ad una qualsiasi porta USB del computer Windows.<br/>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/MULTI%20PAGE%20VERSION/IMG_20221108_195228.jpg" width=45%><br/><br/>
Dal lato computer Windows si deve avviare il programma [VSerialRomT.exe](https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/SERIAL-INTERFACE/Software/VSerialRomT.exe) con il quale si potranno selezionare le roms da caricare, nell'ordine in cui sono inserite, dopodichè premere LOAD. Il programma si mette in attesa del PC128.<br/>
Dal lato PC128 bisogna entrare nel menu di gestione premendo STOP, poi premere F per il caricamento multiplo e successivamente confermare la scelta .<br/> 
Attenzione se non si dispone dello spazio, verranno caricate solamente le ROMS negli spazi vuoti. L'alternativa è cancellare le ROMS non utilizzate.<br/>
#### ATTENZIONE!!!! la posizione del programma di gestione della BIGROM non deve essere cambiato.<br/>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/MULTI%20PAGE%20VERSION/ser2rom.png" width=80%><br/><br/>
<img src="https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/blob/main/MULTI%20PAGE%20VERSION/IMG_20221108_195752.jpg" 
 width=45%><br/><br/>

## VIDEO DEMO
Below, a demostrating videos.<br/>
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/s6rl8qWxTY4/0.jpg)](https://youtu.be/s6rl8qWxTY4)
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/AeOjjLHGntw/0.jpg)](https://youtu.be/AeOjjLHGntw)
## SVILUPPI FUTURI 
Sincronizzazione del contenuto della Bigrom con il programma di caricamento e gestione drag&drop.
Incremento della velocità della seriale.
Esecuzione di programmi in basic.
## SOFTWARE TOOLS
[Kicad](https://www.kicad.org/) and [Freerounting](https://freerouting.org/) to develop schematics and pcb.<br/>
[CMOC](http://perso.b2b2c.ca/~sarrazip/dev/cmoc.html) C compiler to develop page 0 Rom Tool.

## DOVE TROVARE LE ROMS
https://github.com/dinoflorenzi/PC128-OLIVETTI-PRODEST-BIGROM/tree/main/ROMS
http://dcmoto.free.fr/programmes/_html/support_memo5.html
https://www.6502man.com/Bricolages/MEMO5_multirom/MEMO5_multirom.html
## RESOURCES
http://dcmoto.free.fr/documentation/schemas/mo6.png
https://www.mouser.it/datasheet/2/268/doc0006-1108095.pdf
https://www.mouser.it/datasheet/2/268/39%20Series_MPF_MPF__Product%20Brief-373259.pdf
