/* Generated by gensyscalls.py. Do not edit. */

#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(uname)
    movl    $__NR_uname, %eax
    syscall
    cmpq    $-MAX_ERRNO, %rax
    jb      1f
    negl    %eax
    movl    %eax, %edi
    call    __set_errno
    orq     $-1, %rax
1:
    ret
END(uname)
