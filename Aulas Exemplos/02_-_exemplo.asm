.data
	msg: .asciiz "Ola mundo!"

.text
	la $a0, msg

	addi $v0, $zero, 4
	syscall
	
	li $v0, 10
	syscall
