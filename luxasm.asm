; ------------------------------------------------------------------------------------
; FOR : x86_32 - Linux
; ------------------------------------------------------------------------------------

; compiler settings sec
[CPU 686]
[BITS 32]

section .text
	; code sec
	global _start


_start:
	call print
	call exit
print:
	mov edx, len			; length of string to write
	mov ecx, msg			; string to write
	mov ebx, 1			; file descriptor ( stdout )
	mov eax, 4			; system call number (sys_write)
	int 0x80			; call kernel
	ret
exit:
	mov ebx, 0			; exit code for this program's process
	mov eax, 1			; system call number (sys_exit)
	int 0x80			; call kernel
	nop
section .data
	; init'd data sec
	msg db 'Fuck Java!', 0x0A
	len equ $-msg


section .bss
	; uinit'd data sec



; ------------------------------------------------------------------------------------	
; ATTN		: DOCUMENTATION STANDARD EXAMPLE
; VERSION	: 3.19.2018-1
; AUTHOR	: JON-STR
; ------------------------------------------------------------------------------------
; { BEGIN - CUT - LINE - AFTER - }
; exit:
; end of program
; ARGS ( 0 ) : (  )
; RETURN     : *IGNORE RETURN*
; { END - CUT - LINE - BEFORE - }
; ------------------------------------------------------------------------------------


