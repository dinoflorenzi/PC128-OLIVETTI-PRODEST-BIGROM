 pshs x,y,d
 ldx #$0000
 ldy #$001f
 orcc #$50
 lda $a7ce
 anda #$fb
 sta $a7ce 
 lda #$80
 sta $a7cc
 lda $a7ce
 ora #$04
 sta $a7ce
loop2
 cmpy #0
 beq exit
 ldb #8
 bsr setlow
 bsr rit
 lda,x+ 
 leay -1,y
loop
 pshs a
 anda #$01
 beq low
 bsr sethigh
 bra ret
low
 bsr setlow
ret
 bsr rit
 puls a
 lsra
 decb
 bne loop
 bsr sethigh
 bsr rit
 bra loop2
sethigh
 lda #$ff
 sta $a7cc
 rts
setlow
 lda #$00
 sta $a7cc
 rts
rit
 lda #10
ritloop
 deca
 bne ritloop
 rts
exit
 andcc #$af
 puls x,y,d
 rts