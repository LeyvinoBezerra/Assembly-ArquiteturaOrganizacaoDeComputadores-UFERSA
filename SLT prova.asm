.data 
 	int: .word 20
.text 
	li $v0, 5
	lw $a0, int

	move $t0, $a0
	slt $t0, $s0, $zero 
	beq  $t0, $zero, fim1
	fim2: li $a0, 404  
	li $v0, 17 
 	syscall
 	fim1: li $v0, 10 
 	syscall