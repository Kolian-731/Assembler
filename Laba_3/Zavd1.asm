;N = J/(E+A)*G

.MODEL SMALL
.STACK 100H

.DATA
;N,J,E,A,G
N DW ?
J DB ?
E DB ?
A DB ?
G DB ?

.CODE
start:
MOV AX,@DATA ;
MOV DS,AX    

MOV J,10     
MOV E,2      
MOV A,3      
MOV G,5      

;N = J/(E+A)*G

MOV AL,E     ;1 AL=E=6
MOV BL,A     ;2 CL=A=4
ADD AL,BL    ;3 E+A=2+3=5
MUL G

MOV BX,AX
MOV AL, J
DIV BX

MOV N,AX

MOV AX,4CH
INT 21H
END start 
