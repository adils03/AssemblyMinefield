; output: com

;Adil Sivrikaya
org 100h

.data
    oyun  db '10000',48
    oyun1 db '01000',48
    oyun2 db '00001',48
    oyun3 db '00000',48
    oyun4 db '10000',48 
                     
    oyunson  db '10000',10,13
    oyunson2 db '01000',10,13
    oyunson3 db '00001',10,13
    oyunson4 db '00000',10,13
    oyunson5 db '10000$',10,13
    
    
    
    maske1 db '*****',10,13
    maske2 db '*****',10,13
    maske3 db '*****',10,13
    maske4 db '*****',10,13
    maske5 db '*****$',10,13
    
    
    c db 'Satir numarasi giriniz:$' 
    d db ' Sutun numarasi giriniz:$'
    e db '0$',48
    f db '1$',48
    g db 'Kaybettiniz$' 
    h db 'Tekrar oynamak ister misiniz?evet:1,hayir:0 $'
    k db 'Tebrikler$'  
    
   

.code
    START:
    mov ax,@data
    mov ds,ax 
    
    mov ax,3    ;ekrani temizle
    int 10h 

    lea bx,maske1 
    mov si,bx   
    
    mov dx,si
    mov ah,9h
    int 21h  
    
    mov dl,13d
    mov ah,2h
    int 21h
   
    
    mov dl,10d
    mov ah,2h
    int 21h 
    
    
    EKRAN:
    mov dh, 5
    mov dl, 0
    mov bh, 0   
    mov ah, 2  
    int 10h 
    
    mov ah,9
    lea dx,c    ;Satir numarasi mesaj
    int 21h
    
    mov ah,1
    int 21h     ;Satir numarasi kaydetme
    mov cl,al
    sub cl,48
    
    cmp cl,1
    jl EKRAN
    
    cmp cl,5
    jg EKRAN 
    
    cmp cl,1
    je OYUNX 
    
    cmp cl,2
    je OYUN1X
    
    cmp cl,3
    je OYUN2X
    
    cmp cl,4
    je OYUN3X
    
    cmp cl,5
    je OYUN4X
    
    
    
     
    
    
   
    
    OYUNX:
  
    mov ah,9
    lea dx,d     ;Sutun numarasi mesaj
    int 21h    
    
    mov ah,1
    int 21h      ;Sutun numarasi kaydetme
    mov cl,al
    sub cl,48 
    cmp cl,1
    jl EKRAN
    
    cmp cl,5
    jg EKRAN
    
    cmp cl,1
    je OYUNX1  
    cmp cl,2
    je OYUNX2  
    cmp cl,3
    je OYUNX3  
    cmp cl,4
    je OYUNX4  
    cmp cl,5
    je OYUNX5  
    ;***********************************************************  
    OYUN1X:
    mov ah,9
    lea dx,d     ;Sutun numarasi mesaj
    int 21h    
    
    mov ah,1
    int 21h      ;Sutun numarasi kaydetme
    mov cl,al
    sub cl,48
    cmp cl,1
    jl EKRAN
    
    cmp cl,5
    jg EKRAN 
    
    cmp cl,1
    je OYUN1X1  
    cmp cl,2
    je OYUN1X2  
    cmp cl,3
    je OYUN1X3  
    cmp cl,4
    je OYUN1X4  
    cmp cl,5
    je OYUN1X5  
   
    ;*********************************************************** 
    OYUN2X:
    mov ah,9
    lea dx,d     ;Sutun numarasi mesaj
    int 21h    
    
    mov ah,1
    int 21h      ;Sutun numarasi kaydetme
    mov cl,al
    sub cl,48
    cmp cl,1
    jl EKRAN
    
    cmp cl,5
    jg EKRAN 
    
    cmp cl,1
    je OYUN2X1  
    cmp cl,2
    je OYUN2X2  
    cmp cl,3
    je OYUN2X3  
    cmp cl,4
    je OYUN2X4  
    cmp cl,5
    je OYUN2X5     
    ;***********************************************************    
    OYUN3X:
    mov ah,9
    lea dx,d     ;Sutun numarasi mesaj
    int 21h    
    
    mov ah,1
    int 21h      ;Sutun numarasi kaydetme
    mov cl,al
    sub cl,48
    cmp cl,1
    jl EKRAN
    
    cmp cl,5
    jg EKRAN 
    
    cmp cl,1
    je OYUN3X1  
    cmp cl,2
    je OYUN3X2  
    cmp cl,3
    je OYUN3X3  
    cmp cl,4
    je OYUN3X4  
    cmp cl,5
    je OYUN3X5    
    ;***********************************************************   
    OYUN4X:
    mov ah,9
    lea dx,d     ;Sutun numarasi mesaj
    int 21h    
    
    mov ah,1
    int 21h      ;Sutun numarasi kaydetme
    mov cl,al
    sub cl,48
    cmp cl,1
    jl EKRAN
    
    cmp cl,5
    jg EKRAN 
    
    cmp cl,1
    je OYUN4X1  
    cmp cl,2
    je OYUN4X2  
    cmp cl,3
    je OYUN4X3  
    cmp cl,4
    je OYUN4X4  
    cmp cl,5
    je OYUN4X5      
    ;***********************************************************   
    OYUNX1:
        mov dh,0
        mov dl,0
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun 
        mov si,bx   
                  
        mov dx,[si]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    
    OYUNX2:
        mov dh,0
        mov dl,1
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun 
        mov si,bx   
                  
        mov dx,[si+1]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUNX3:
        mov dh,0
        mov dl,2
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun 
        mov si,bx   
                  
        mov dx,[si+2]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUNX4:
        mov dh,0
        mov dl,3
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun 
        mov si,bx   
                  
        mov dx,[si+3]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUNX5:
        mov dh,0
        mov dl,4
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun 
        mov si,bx   
                  
        mov dx,[si+4]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN 
     ;*********************************************************** 
     OYUN1X1:
        mov dh,1
        mov dl,0
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun1 
        mov si,bx   
                  
        mov dx,[si]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    
    OYUN1X2:
        mov dh,1
        mov dl,1
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun1 
        mov si,bx   
                  
        mov dx,[si+1]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN1X3:
        mov dh,1
        mov dl,2
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun1 
        mov si,bx   
                  
        mov dx,[si+2]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN1X4:
        mov dh,1
        mov dl,3
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun1 
        mov si,bx   
                  
        mov dx,[si+3]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN1X5:
        mov dh,1
        mov dl,4
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun1 
        mov si,bx   
                  
        mov dx,[si+4]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
     ;*********************************************************** 
     OYUN2X1:
        mov dh,2
        mov dl,0
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun2 
        mov si,bx   
                  
        mov dx,[si]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    
    OYUN2X2:
        mov dh,2
        mov dl,1
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun2
        mov si,bx   
                  
        mov dx,[si+1]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN2X3:
        mov dh,2
        mov dl,2
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun2 
        mov si,bx   
                  
        mov dx,[si+2]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN2X4:
        mov dh,2
        mov dl,3
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun2 
        mov si,bx   
                  
        mov dx,[si+3]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN2X5:
        mov dh,2
        mov dl,4
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun2 
        mov si,bx   
                  
        mov dx,[si+4]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    ;************************************************************
     OYUN3X1:
        mov dh,3
        mov dl,0
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun3 
        mov si,bx   
                  
        mov dx,[si]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    
    OYUN3X2:
        mov dh,3
        mov dl,1
        mov bh,0
        mov ah,2
        int 10h
                   
        lea bx,oyun3
        mov si,bx   
                  
        mov dx,[si+1]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN3X3:
        mov dh,3
        mov dl,2
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun3 
        mov si,bx   
                  
        mov dx,[si+2]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN3X4:
        mov dh,3
        mov dl,3
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun3 
        mov si,bx   
                  
        mov dx,[si+3]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN3X5:
        mov dh,3
        mov dl,4
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun3 
        mov si,bx   
                  
        mov dx,[si+4]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
     ;****************************************************************
      OYUN4X1:
        mov dh,4
        mov dl,0
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun4 
        mov si,bx   
                  
        mov dx,[si]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    
    OYUN4X2:
        mov dh,4
        mov dl,1
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun4 
        mov si,bx   
                  
        mov dx,[si+1]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN4X3:
        mov dh,4
        mov dl,2
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun4 
        mov si,bx   
                  
        mov dx,[si+2]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN4X4:
        mov dh,4
        mov dl,3
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun4 
        mov si,bx   
                  
        mov dx,[si+3]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
    OYUN4X5:
        mov dh,4
        mov dl,4
        mov bh,0
        mov ah,2
        int 10h
    
        lea bx,oyun4 
        mov si,bx   
                  
        mov dx,[si+4]
        sub dl,48 
        cmp dl,1
        je SON
        add di,1
        cmp di,21d
        je WIN
        mov ah,9
        lea dx,e     
        int 21h 
        jmp EKRAN
     WIN:   
     mov dh,0
    mov dl,0
    mov bh,0
    mov ah,2
    int 10h
    
    lea bx,oyunson 
    mov si,bx   
    
    mov dx,si
    mov ah,9h
    int 21h
     
    mov dh,6
    mov dl,0
    mov bh,0
    mov ah,2
    int 10h
    
    mov ah,9
    lea dx,k    ;Tekrak yazisi
    int 21h 
    
    mov dh,7
    mov dl,0
    mov bh,0
    mov ah,2 
    int 10h  
    
    mov ah,9
    lea dx,h
    int 21h
    
    
    mov ah,1
    int 21h     ;Tekrar cevap
    mov cl,al
    sub cl,48 
    cmp cl,1
    je START 
    
    SON: 
    
    mov dh,0
    mov dl,0
    mov bh,0
    mov ah,2
    int 10h
    
    lea bx,oyunson 
    mov si,bx   
    
    mov dx,si
    mov ah,9h
    int 21h  
    
     
    mov dh,6
    mov dl,0
    mov bh,0
    mov ah,2
    int 10h
    mov ah,9
    lea dx,g     ;kaybettiniz yazisi
    int 21h
 
    
    mov dh,12
    mov dl,0
    mov bh,0
    mov ah,2
    int 10h 
    mov ah,9
    lea dx,h    ;Tekrak yazisi
    int 21h
    
    mov ah,1
    int 21h     ;Tekrar cevap
    mov cl,al
    sub cl,48 
    cmp cl,1
    je START
    
    mov ah,4ch
    int 21h  
.exit




