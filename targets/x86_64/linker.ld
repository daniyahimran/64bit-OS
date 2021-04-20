ENTRY(start)

SECTIONS
{
	;starting point for data
	. = 1M;

	.boot :
	{
		; to show where to enter the OS, multiboot_header in header.asm
		KEEP(*(.multiboot_header))
	}

	.text :
	{
		*(.text)
	}
}
