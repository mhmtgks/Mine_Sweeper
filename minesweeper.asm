   

org 100h 

mov dl,al

mov cx,50         ;ilk istek x sonraki y alinir
folus:            ;0012 nolu adreste skoru gosterir
push 31h
loop folus
mov bx,0 



yazma:
mov cx,10
dongu:
pop dx
mov ah,06h
int 21h              ;yazma yeri
loop dongu
cmp bx,5
jl sb
jge istek 

sb:
mov dl,0Ah
int 21h
mov dl,0Dh
int 21h                  ;cursor satir basi
mov cx,10
inc bx
jmp dongu
ret ;sb
ret ;dongu
ret ;yazma


istek:
mov ah,08H
int 21H
mov dl,al
sub dl,31h
mov ah,08H
int 21H
mov dh,al
sub dh,31h
pop bx
add bx,1
push bx
jmp bomberman 
jmp fns
ret  ;istek ret


fns:  
mov  ah, 2       ;dl x dh y kordinati bu digerleri cursor hareketi          
mov  bh, 0                  
int  10h                    
mov dx,30h
mov ah,06h
int 21h




mov dl,8
mov dh,5
mov  ah, 2       ; veri icin oyun altina tasima
mov  bh, 0                  
int  10h 

jmp istek 
ret;fns ret


bomberman:

cmp dl,08h
je b1

cmp dl,07h
je b2

cmp dl,04h
je b3

cmp dl,06h
je b4

cmp dl,01h
je b5

cmp dl,02h
je b6

cmp dl,00h
je b7

cmp dl,03h
je b8
jmp fns
ret ;bomberman


b1:
cmp dh,03h
je bomba
jmp fns
ret ;b1

b2:
cmp dh,02h
je bomba
jmp fns
ret ;b2

b3:
cmp dh,03h
je bomba
jmp fns
ret ;b3
       
b4:
cmp dh,05h
je bomba
jmp fns
ret ;b4       

b5:
cmp dh,05h
je bomba
jmp fns
ret ;b5
b6:
cmp dh,01h
je bomba
jmp fns
ret ;b6
b7:
cmp dh,01h
je bomba
jmp fns
ret ;b7 
b8:
cmp dh,03h
je bomba
jmp fns
ret ;b8
bomba:
mov  ah, 2       ;dl x dh y kordinati bu digerleri cursor hareketi          
mov  bh, 0                  
int  10h                    
mov dx,58h
mov ah,06h
int 21h


olduncik:
mov dl,8
mov dh,5
mov  ah, 2       ; veri icin oyun altina tasima
mov  bh, 0                  
int  10h 



mov dx,47h
mov ah,06h
int 21h
mov dx,61h
mov ah,06h
int 21h
mov dx,6Dh
mov ah,06h
int 21h
mov dx,65h
mov ah,06h
int 21h
mov dx,20h
mov ah,06h
int 21h
mov dx,4Fh
mov ah,06h
int 21h
mov dx,76h
mov ah,06h
int 21h
mov dx,65h
mov ah,06h
int 21h
mov dx,72h
mov ah,06h
int 21h
mov dx,21h
mov ah,06h
int 21h


mov ah,08H
int 21H
       
hlt
ret ;bomba

ret;main




