model small
stack 256
.data

Kolian struc
surname          db 15 dup (' ') ;surname 
name             db 15 dup (' ') ;name
age              db 10 dup (' ') ;age
hobbie           db 35 dup (' ') ;hobbie
placeOfResidence db 30 dup (' ') ;place of recidence
Kolian ends

Kolia  Kolian<'Karapoziuk', 'Mykola','20','Guitar,Istagram,Sport', 'Village: Chukheli'>
Kolia2 Kolian <> 

.code
main:
mov ax,@data 
mov ds,ax    
xor ax,ax    

mov ah,40h
mov bx,1
mov dx,offset Kolia.surname 
mov cx,30
int 21h

mov ah,40h
mov bx,1
mov dX,offset Kolia.name
mov cx,1
int 21h


mov ah,40h
mov bx,1
mov dx,offset Kolia.age
mov cx,30
int 21h

mov ah,40h
mov bx,1
mov dx,offset Kolia.placeOfResidence
mov cx,30
int 21h

mov ax,4c00h
int 21h
end main