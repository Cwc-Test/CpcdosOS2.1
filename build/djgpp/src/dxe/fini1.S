/*
 * DXE3: destruction
 *
 *  Copyright (C) 2002 - Borca Daniel
 *  Email : dborca@yahoo.com
 *  Web   : http://www.geocities.com/dborca
 */


		.text

		.p2align 2,,3
		.globl	_fini
_fini:
		pushl	%ebx
		movl	$djgpp_first_dtor, %ebx
	0:
		cmpl	$djgpp_last_dtor, %ebx
		jnb	1f
		call	*(%ebx)
		addl	$4, %ebx
		jmp	0b
	1:
		popl	%ebx
		ret
