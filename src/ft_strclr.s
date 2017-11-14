global _ft_strclr
extern _ft_strlen
extern _ft_memset

section .text
_ft_strclr:
    push rbp
    mov rbp, rsp
    cmp rdi, 0
    je return_null

strclr:
    push rdi
    call _ft_strlen
    mov rdx, rax
    pop rdi
    push rdi
    mov rsi, 0
    call _ft_memset
    pop rdi
    mov rax, rdi
    leave
    ret

return_null:
    mov rax, 0
    leave
	ret
