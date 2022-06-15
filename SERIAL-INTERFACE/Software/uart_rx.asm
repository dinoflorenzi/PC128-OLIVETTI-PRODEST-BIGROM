 pshs x,y,d
 orcc #$50
 ldx #$6000
 ldy #$ffff
 ldb #5
loop
 lda $a7cc     
 anda #$40
 beq exit
 leay -1,y
 cmpy #0
 bne loop
 ldy #$ffff
 decb
 bne loop
 bra exit2
exit
 lda #22
 ldb #8
rit
 deca             ;2/1
 bne rit           ;3           -50
 lsr ,x              ;2/1       -76
 lda $a7cc      ;5/4      -55
 anda #$40    ;2          -57
 beq setlow   ;3           -60
 lda ,x             ;4           -64
 ora #$80    ;2          -66
 bra sethigh   ;3          -69
setlow
 lda ,x             ;4          -64
 anda #$7f    ;2           -66
 nop               ;2          -68
sethigh
 sta ,x             ;5/4      -74
 lda #14        ;2            -78
 decb             ;2/1       -80
 bne rit          ;3           -83
rit2
 deca
 bne rit2
 lda #22
 leax 1,x
 ldy #$ffff
 ldb #1
 bra loop
exit2
 andcc #$af
 puls x,y,d
 rts