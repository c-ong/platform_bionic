/* Generated by gensyscalls.py. Do not edit. */

#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(times)
    pushl   %ebx
    mov     8(%esp), %ebx
    movl    $__NR_times, %eax
    int     $0x80
    cmpl    $-MAX_ERRNO, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno
    addl    $4, %esp
    orl     $-1, %eax
1:
    popl    %ebx
    ret
END(times)
