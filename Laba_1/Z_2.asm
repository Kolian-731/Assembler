;Zav_2

.model small 
.stack 100h 
.data 
UA DB ' --- Ukraine --- $'
.code 
start: 
mov ax,@data 
mov ds,ax
LEA DX,UA
mov ah,09h 
int 21h
mov ax,4c00h 
int 21h
end start 