global _ft_strnew
extern _malloc
extern _ft_bzero

section .text
_ft_strnew:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je return_null

malloc:
    inc rdi ; for '\0'
    push rdi
	call _malloc
	cmp rax, 0 ; check malloc is not NULL
	je return_null

bzero:
    pop rdi
    mov r9, rax
    mov rsi, rdi ; init rsi to len of strnew
	mov rdi, rax ; init rdi to empty malloc
    call _ft_bzero
    mov rax, r9
    cmp rax, 0 ; check strnew is not NULL
	je return_null
    leave
    ret

return_null:
    mov rax, 0
	leave
	ret