;Zav_4
MODEL small
.CODE
org 100h
begin: jmp start
r dw 34h
Start: mov ax, @data
mov ds, ax
mov ax, 65h
mov [r], ax
mov si, [r]
mov bx, 70h
mov [r], bx
mov di, [r]
mov cx, 40h
mov [r], cx
mov bp, [r]
Exit: mov al, 04ch
int 21h
END Start