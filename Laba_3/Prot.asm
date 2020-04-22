;c =(A+B)/(9-4P)
.MODEL SMALL
.STACK 100H
.DATA
;A,B,C,P
A DB ?
B DB ?
P DB ?
C DW ?

.CODE
start:
MOV AX,@DATA 
MOV DS,AX 
  
MOV A,8      
MOV B,3      
MOV P,2
   
MOV AL,A     
MOV CL,B     
ADD AL,CL 

MOV AH,0

MOV AL,9 
SUB AL,4
MOV BL,P
MUL BL
DIV BL

MOV C,AX

MOV AH,4CH
INT 21H
END start 







