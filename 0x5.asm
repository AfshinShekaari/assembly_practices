global _start
section .data 
    addr dw "hey you space cowboy!!"
section .text 
    _start:
    mov [addr], byte 's'    ; => replace 'h' with 's'
    mov [addr+2], byte 'e'  ; => replace 'y' with 'e'
    mov eax, 4              ; => write system call
    mov ebx, 1
    mov ecx, addr
    mov edx, 22 
    int 0x80
    mov eax, 1
    mov ebx, 0              ; => mission successful(return 0 in C)
    int 0x80



; 
; section .data 
;   ;db is 1 byte 
;     name1 db "string"
;     name2 db 0xff
;     name3 db 100
;   ;dw is 2 bytes
;     name4 dw 0x1234
;     name5 dw 1000
;   ;dd is 4 bytes 
;     name6 dd 0x12345678
;     name7 dd 100000