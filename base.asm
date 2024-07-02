IDEAL
MODEL small
STACK 100h
DATASEG
;-------------------------
;VARIABLES HERE
;----------------------

CODESEG
start:

mov ax, @data
mov ds, ax

;---------------------------
;start coding here
;---------------------------


exit:
mov ax, 4c00h
int 21h
END start
base.asm
הפריט base.asm מוצג.