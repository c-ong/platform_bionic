/* Generated by gensyscalls.py. Do not edit. */

#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(setreuid)
    mov     ip, r7
    ldr     r7, =__NR_setreuid32
    swi     #0
    mov     r7, ip
    cmn     r0, #(MAX_ERRNO + 1)
    bxls    lr
    neg     r0, r0
    b       __set_errno
END(setreuid)
