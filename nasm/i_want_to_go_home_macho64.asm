; nasm -f macho64 i_want_to_go_home_macho64.asm && gcc -m64 i_want_to_go_home_macho64.o && ./a.out

        global     _main

        section    .text
_main:  mov        rax, 4
        add        rax, 0x2000000 ;MacOS & BSD
        mov        rdi, 1
        mov        rsi, msg
        mov        rdx, len
        syscall 

        mov        rax, 1
        add        rax, 0x2000000 ;MacOS & BSD
        mov        rdi, 0
        syscall 

        section    .data
msg:    db         'I want go home', 10
len:    equ   	   $ - msg	
