/* Generated by gensyscalls.py. Do not edit. */

#include <asm/unistd.h>
    .text
    .globl __rt_sigpending
    .align 4
    .ent __rt_sigpending

__rt_sigpending:
    .set noreorder
    .cpload $t9
    li $v0, __NR_rt_sigpending
    syscall
    bnez $a3, 1f
    move $a0, $v0
    j $ra
    nop
1:
    la $t9,__set_errno
    j $t9
    nop
    .set reorder
    .end __rt_sigpending
