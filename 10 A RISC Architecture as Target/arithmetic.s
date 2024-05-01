	.data
	.text
	.globl QuotRem
QuotRem:	
	addi sp, sp, -32
	sw ra, 20(sp)
	sw s0, 16(sp)
	addi s0, sp, 24
	sw zero, -12(s0)
	lw s8, 4(s0)
	sw s8, -16(s0)
L1:	
	lw s5, -16(s0)
	lw s2, 0(s0)
	blt s5, s2, L2
L3:	
	lw s3, -16(s0)
	lw s6, 0(s0)
	sub s3, s3, s6
	sw s3, -16(s0)
	lw s10, -12(s0)
	addi s10, s10, 1
	sw s10, -12(s0)
	j L1
L2:	
	lw s11, -12(s0)
	sw s11, -4(sp)
	mv s7, a0
	lw a1, -12(s0)
	addi a0, zero, 1
	addi a2, zero, 4
	addi a7, zero, SCALL_WRITEINT
	scall
	mv a0, s7
	lw s9, -16(s0)
	sw s9, -4(sp)
	mv s4, a0
	lw a1, -16(s0)
	addi a0, zero, 1
	addi a2, zero, 4
	addi a7, zero, SCALL_WRITEINT
	scall
	mv a0, s4
	lw ra, 20(sp)
	lw s0, 16(sp)
	addi sp, sp, 32
	ret
	.globl main
main:	
	jal ra, arithmetic
	addi a0, zero, 0
	addi a7, zero, 93
	scall
	.globl arithmetic
arithmetic:	
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	mv s8, a0
	addi a0, zero, 0
	addi a7, zero, SCALL_READINT
	scall
	sw a1, -12(s0)
	mv a0, s8
	mv s5, a0
	addi a0, zero, 0
	addi a7, zero, SCALL_READINT
	scall
	sw a1, -16(s0)
	mv a0, s5
	lw s2, -12(s0)
	sw s2, -4(sp)
	lw s3, -16(s0)
	sw s3, -8(sp)
	jal ra, QuotRem
	lw ra, 12(sp)
	lw s0, 8(sp)
	addi sp, sp, 16
	ret