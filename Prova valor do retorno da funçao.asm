.data
vet: .word 1, 2, 3, 4, 5


.text

	li $a0, 5
	la $a1, vet
	jal sum
	li $v0, 10
	syscall
   sum:
	addi $sp, $sp, -8
	sw $sp, 0($sp)
	sw $s1, 4($sp)
	add $s0, $zero, $zero
	add $s1, $zero, $zero
   L1:  beq $s0, $a0, fim
        sll $t0, $s0, 2
        add $t2, $t0, $a1
        j L1
  fim: 
        add $v0, $s1 $zero
        lw  $s0, 0($sp)
        lw  $s1, 4($sp) 
        lw  $s0, 0($sp)
        addi $sp, $sp, 8
        jr $ra
    add $v0,$zero,$t0
    jr $ra