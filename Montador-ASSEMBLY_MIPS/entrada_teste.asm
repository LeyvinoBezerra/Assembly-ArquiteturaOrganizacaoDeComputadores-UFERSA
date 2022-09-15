add $s2, $s0, $s1
sub $s2, $s0, $s1
and $t1, $s6, $s2
or $t2, $s2, $s1
nor $s2, $s0, $s1
addi $t3, $t2, -243
andi $t2, $t1, 16
ori $t2, $t1, 16
sll $t1, $s2, 2
srl $t3, $s3, 5
sw $t4, 32($s1)
lw $s1, 34($t1)
move $s1, $s2
bne $s4, $s5, 43
beq $s1, $t3, -83
