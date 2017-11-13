global _ft_memcpy

section .text

_ft_memcpy: ; cpy rdx bytes or rsi to rdi
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je return
	cmp rsi, 0
	je return
	cld
	mov rcx, rdx
	rep movsb ; move rsi to rdi while rcx

return:
	mov rax, rdi
	leave
	ret