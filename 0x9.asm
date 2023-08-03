global main
extern printf

section .data
    msg db "Testing %i...", 0x0a, 0x00 ; 0x00 refers to null terminator for showing end of the string

main:
    push ebp 
    mov ebp, esp 
    push 123                ;arguments push in stack in reverse order
    push msg
    call printf
    mov eax, 0
    mov esp, ebp
    pop ebp 
    ret


;nasm -f elf32 0x9.asm -o 0x9.o
;gcc -m32 0x9.o -o 0x9                 ;gcc for linking in C
;./0x9