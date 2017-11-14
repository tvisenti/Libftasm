global _ft_cat

%define SYSCALL(nb)	0x2000000 | nb
%define STDOUT		1
%define READ		3
%define WRITE		4

section .data
    buffer: times 4096 db 0
    buffsize equ $ - buffer

section .text
_ft_cat:
	push rbp
	mov rbp, rsp
	mov r12, rdi

read: ; read only BUFF_SIZE 
	mov rdi, r12
	lea rsi, [rel buffer]
	mov rdx, buffsize
	mov rax, SYSCALL(READ)
	syscall
	jc fail ; err on read (carry Flag == 1)
	cmp rax, 0
	jle end ; enf of file
	mov r11, rax ; save nb of readed byte

write:
	mov rdi, STDOUT
	mov rdx, r11 ; size to write
	mov rax, SYSCALL(WRITE)
	syscall
	jc fail ; err on write (carry Flag == 1)
	; pop rdi ; restore FD in rdi
	jmp read

fail:
	pop rdi

end:
	leave
	ret
