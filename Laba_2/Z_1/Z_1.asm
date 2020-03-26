MODEL SMALL
STACK 256
DATASEG
    newData DB 50h  
    
CODESEG
Start:
    mov ax,@data
    mov al,12h   ;AL=12H
    mov bl,56h   ;BL=56H 
    
    mov cx,89h   ;CX=89H
    mov ah,34h   ;AH=34H
    
    mov bh,78h   ;BH=78H
    mov dx,0ABCH ;DX=0ABCH
    
    XCHG ax,bx   ;AX <---> BX 
    XCHG cx,dx   ;CX <---> DX
    
    mov si,ax    ;AX ---> SI
    mov di,bx    ;BX ---> DI
    mov bp,cx    ;CX ---> BP 
    
Exit:
    mov ah,04Ch    
    mov al,0h   
    int 21h        
End Start