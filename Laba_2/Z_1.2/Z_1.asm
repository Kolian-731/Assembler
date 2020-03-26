.model small
.code
org 100h 
begin: jmp start 

newData DB 31h
start: 
    mov al,12h   ;AL=12H
    mov bl,56h   ;BL=56H 
    
    mov cx,89h   ;CX=89H
    mov ah,34h   ;AH=34H
    
    mov bh,78h   ;BH=78H
    mov dx,0ABCH ;DX=0ABCH
    
    XCHG ax,bx   ;AX <---> BX 
    XCHG cx,dx   ;CX <---> DX
    mov si,ax    ;AX  ---> SI
    mov di,bx    ;BX  ---> DI
    mov bp,cx    ;CX  ---> BP 
int 21h
end begin