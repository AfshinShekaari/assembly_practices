global _start 

section .text 
_start:
    mov ebx,1
    mov ecx, 4
label:
    add ebx ,ebx    ; => how many times did we jump back ? lg(ebx)
    dec ecx         ; => ecx --
    cmp ecx, 0
    jg label        ; => continue the loop if ecx > 0
    mov eax, 1 
    int 0x80