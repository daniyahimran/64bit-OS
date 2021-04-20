global long_mode_start
extern kernel_main

section .text
; setting OS operating bits as 64 for 64-bit system
bits 64
long_mode_start:
    ; load null into all data segment registers, so all instructions run correctly
    mov ax, 0
    mov ss, ax
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

; calling function from main.c to print to console
	call kernel_main
    hlt
