global _ft_memcpy

section .text

_ft_memcpy: ; cpy rdx bytes or rsi to rdi
	push rbp
	mov rbp, rsp
	mov rcx, rdx
	mov r9, rdi 
	cmp rcx, 0
	jle return
	cmp r9, 0
	je return
	cmp rsi, 0
	je return
	cld
	rep movsb ; move rsi to rdi while rcx

return:
	mov rax, r9
	leave
	ret