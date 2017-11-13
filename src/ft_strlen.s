global _ft_strlen

section .text

_ft_strlen: ; Searching a particular character in register al
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je return_null
	cld
	mov al, 0
	mov rcx, -1 ; rcx in negative way
	repne scasb
	not rcx ; reverse rcx -> get a positive number
	dec rcx ; rcx -= 1
	mov rax, rcx
	leave
	ret

return_null:
	mov rax, 0
	leave
	ret