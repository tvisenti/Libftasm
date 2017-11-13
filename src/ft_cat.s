global _ft_cat
extern _ft_strlen

%define SYSCALL(nb)	0x2000000 | nb
%define BUFF_SIZE	255
%define STDOUT		1
%define READ		3
%define WRITE		4

section .bss
		buffer resb BUFF_SIZE

section .text
_ft_cat:
	push rbp
	mov rbp, rsp

read:
	push rdi ; push FD in stack
	mov rax, SYSCALL(READ)
	mov rsi, buffer
	mov rdx, BUFF_SIZE
	syscall
	jc fail ; err on read (carry Flag == 1)
	cmp rax, 0
	je end ; exit if EOF

write:
	mov rdi, STDOUT
	mov rdx, rax ; size to write
	mov rax, SYSCALL(WRITE)
	syscall
	jc fail ; err on write (carry Flag == 1)
	pop rdi ; restore FD in rdi
	jmp read

fail:
	pop rdi
	mov rax, 1

end:
	leave
	ret