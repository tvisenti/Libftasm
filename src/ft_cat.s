global _ft_cat

%define SYSCALL(nb)	0x2000000 | nb
%define BUFF_SIZE	255
%define STDOUT		1
%define READ		3
%define WRITE		4

section .bss ; var not set
		buffer resb BUFF_SIZE ; alloc empty BUFF_SIZE 

section .text
_ft_cat:
	push rbp
	mov rbp, rsp

read: ; read only BUFF_SIZE 
	push rdi ; push FD in stack
	mov rax, SYSCALL(READ)
	mov rsi, buffer
	mov rdx, BUFF_SIZE
	syscall
	jc fail ; err on read (carry Flag == 1)
	cmp rax, 0
	je end ; enf of file

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