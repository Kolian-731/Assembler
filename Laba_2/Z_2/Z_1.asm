.model small 
.stack 100h 

.data 
newData DB 31h
SRC DB 1,2,3,4,5,6,7,8
DST DB 8 DUP (?)
ABC DB 3 DUP (?)

.code 
start: 

    mov al,21h    ;AL=12H
    mov bl,26h    ;BL=56H 
    
    mov cx,89h    ;CX=89H
    mov ah,34h    ;AH=34H
    
    mov bh,78h    ;BH=78H
    mov dx,0ABCH  ;DX=0ABCH
    
    XCHG ax,bx    ;AX <---> BX 
    XCHG cx,dx    ;CX <---> DX
    
    mov si,ax     ;AX ---> SI
    mov di,bx     ;BX ---> DI
    mov bp,cx     ;CX ---> BP 

int 21h
mov ax,4c00h 
int 21h
end start 