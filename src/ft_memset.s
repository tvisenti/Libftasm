global _ft_memset

section .text

_ft_memset: ; writes rdx bytes of value of rsi (cast unsigned char) to the string rdi
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je return
	mov r9, rdi ; save start of ptr
	mov rcx, rdx ; len to copy
	mov al, sil  ; value to copy: sil -> 8bits (unsigned char) of rsi
	cld
	rep stosb ; Repeat while len not 0 and store byte string
	mov rdi, r9 ; load ptr

return:
	mov rax, rdi
	leave
	ret