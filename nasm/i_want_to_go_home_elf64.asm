; nasm -f elf64 i_want_to_go_home_elf64.asm && ld  i_want_to_go_home_elf64.o && ./a.out

        global     _start
  
        section    .text
_start: mov        rax, 1
        mov        rdi, 1
        mov        rsi, msg
        mov        rdx, len
        syscall

        mov        rax, 60
        mov        rdi, 0
        syscall

        section    .data
msg:    db         'I want go home', 10
len:    equ        $ - msg
