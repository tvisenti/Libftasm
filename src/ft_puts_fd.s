global _ft_puts_fd
%define MACH_SYSCALL(nb) 0x2000000 | nb
%define STDOUT  1
%define WRITE   4

section .data
string:
    .empty db "(null)", 10
    .empty_len equ $ - string.empty ; len of '(null)\n'
    .newline db 10

section .text
_ft_puts_fd:
    push rbp
    mov rbp, rsp
    mov rbx, rdi
    mov rcx, 0
    cmp rbx, 0
	jz print_null

count: ; count str
    cmp byte[rbx + rcx], 0
    jz print
    inc rcx
    jmp count

print: ; call write -> write(rdi, "rsi", rdx);
    mov rdi, rsi
    mov rsi, rbx
    mov rdx, rcx
    mov rax, MACH_SYSCALL(WRITE)
    syscall

return_success: ; print un '\n'
    mov rdi, STDOUT
    lea rsi, [rel string.newline] ; new line
    mov rdx, 1
    mov rax, MACH_SYSCALL(WRITE)
    syscall
    jmp return

print_null: ; print "(null)\n"
    mov rdi, STDOUT
    lea rsi, [rel string.empty]
    mov rdx, string.empty_len
    mov rax, MACH_SYSCALL(WRITE)
    syscall
    jmp return

return:
    mov rax, 10
    leave
    ret