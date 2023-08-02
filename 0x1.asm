global _start ; => it is now visible to the linker 
_start: ; => this is the entry point
    mov eax, 1 ; => system call number 1 is exit
    mov ebx, 42  ; => exit status 
    sub ebx, 29 
    int 0x80 ; => kernel interrupt



; ( to make it run )
    ; nasm -f elf32 0x1.asm -o 0x1.o
    ; ld -m elf_i386 -o 0x1 0x1.o
    ; ./0x1
    ; echo $?