;Zav_1

.MODEL SMALL
.CODE
org 100h
begin: jmp start
UA DB ' --- Ukraine --- $'
start: LEA DX,UA
MOV AH,09h
INT 21h
MOV AH,4Ch
MOV AL,00h
INT 21h
END begin

