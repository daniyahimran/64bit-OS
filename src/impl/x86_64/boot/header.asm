section .multiboot_header
header_start:
	; magic number, to set boot type
	dd 0xe85250d6 ; multiboot2
	; architecture
	dd 0 ; protected mode i386
	; header length
	dd header_end - header_start
	; sum of all data variables defined above 
	dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))

	; end tag - to signify that no code is coming after this
	dw 0
	dw 0
	dd 8
header_end:
