global	_ft_isalpha
extern	_ft_isupper
extern	_ft_islower

section .text
_ft_isalpha:
    push rbp
    mov rbp, rsp
	call _ft_isupper
	cmp	rax, 1
	je true
	call _ft_islower
	cmp rax, 1
	je true
	mov rax, 0
	leave
	ret

true:
    mov rax, 1
	leave
	ret