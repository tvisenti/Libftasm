global _ft_strdup
extern _ft_strlen
extern _malloc

section .text
_ft_strdup:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	cmp rax, 0
	je return

strlen:
	push rdi ; ptr is in stack
	call _ft_strlen
	pop rdi ; retrieve the ptr from stack

malloc:
	inc rax ; add 1 for the final '\0'
	mov r9, rdi ; save ptr in r9
	mov rdi, rax ; Put the len for malloc
	push r9 ; string is in stack
	push rdi ; len is in stack
	;sub rsp, 16 ; data link escape (for alignement with ptr)
	call _malloc
	;add rsp, 16 ; restore stack
	cmp rax, 0 ; check malloc is not NULL
	je return

duplicate: ; duplicate str to new_str with return of malloc and while --len != 0 (len = strlen(str))
	pop rcx ; len from stack (rdi)
	pop rsi ; string from stack (r9)
	mov rdi, rax; return of malloc
	cld
	rep movsb

return:
	leave
	ret