global _start 

section .data 
    msg  db "Hello, world!", 0xA ; => 0x0a is new line 
    len equ $ - msg               ; length of 'msg'

section .text 
_start:
    mov eax, 4      ; => write system call
    mov ebx, 1      ; => stdout file descriptor
    mov ecx, msg     ; => message to write
    mov edx, len    ; => message length
    int 0x80       