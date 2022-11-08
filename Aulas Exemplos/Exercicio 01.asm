# Exercicio - programas em assembly MIPS - Questão 01

.data
	x: .word 5	# Vai ser mapeado para $s0
	y: .word 1	# Vai ser mapeado para $s1
	
.text
# Endereo de X e Y
	la $t0, x
	la $t1, y

# Caregar o valor de X e Y
	lw $s0, 0($t0)
	lw $s1, 0($t1)
	
# Incrementar x
	addi $s1, $s0, 1
	
# Aualiza Y na memoria
	sw $s1, 0($t1)
	
# Finalizar programa
	li $v0, 10
	syscall