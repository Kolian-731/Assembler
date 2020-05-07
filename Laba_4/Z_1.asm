model   small
.stack  100h
.code
begin:  mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,dbInp
    int 21h
.data
dbInp   db  10,13,'Enter string:$'

.code
    mov ah,10
    lea dx,dbMax
    int 21h
.data
dbMax   db  250
dbLen   db  ?
dbStr   db  250 dup(?)
.code
    mov ah,9
    lea dx,dbRes
    int 21h
.data
dbRes   db  10,13,'result;$'
.code
    xor bx,bx
    lea di,dbStr
    mov si,di
    mov bl,dbLen
    add si,bx
    dec si
    std
@@0:    lodsb
    int 29h
    cmp si,di
    jae @@0
    xor ax,ax
    int 16h
    mov ax,4C00h
    int 21h
    end begin