model small
stack 256
.data

train struc
destSta       db 30 dup (' ') ;destination station
numberOfTrain db  4 dup (' ') ;number of train
depTime       db  5 dup (' ') ;departure time
arrTime       db  5 dup (' ') ;arrival time


train ends

tral train  <'Khmelnytskyi - Kiev'  , '110','10:11','15:10'>
tra2 train  <'Khmelnytskyi - Odessa',  '47','10:12','14:20'>
tra3 train  <'Khmelnytskyi - Lviv'  , '241','17:00','23:33'>
tra4 train <> ;

.code
main:
mov ax,@data 
mov ds,ax    
xor ax,ax    

mov ah,40h
mov bx,1
mov dx,offset tral.destSta 
mov cx,30
int 21h

mov ah,40h
mov bx,1
mov dX,offset numberOfTrain
mov cx,1
int 21h


mov ah,40h
mov bx,1
mov dx,offset tral.depTime 
mov cx,30
int 21h

mov ah,40h
mov bx,1
mov dx,offset tral.arrTime 
mov cx,30
int 21h

mov ax,4c00h
int 21h
end main