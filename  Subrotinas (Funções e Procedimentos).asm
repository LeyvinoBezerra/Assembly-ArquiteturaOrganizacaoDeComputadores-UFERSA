.data
	msgUsr: .asciiz "Forneça o número positivo: "
	msgPar: .asciiz "O Número é par. "
	msgImpar: .asciiz "O número é impar. "
.text
	la $a0, msgUsr
	jal imprimeString
	jal leInteiro
	
	move $a0, $v0
	jal ehImpar
	beq $v0, $zero, imprimePar
	la $a0, msgImpar
	jal imprimeString
	jal encerraPrograma
	
	
	imprimePar:
		La $a0, msgPar
		jal imprimeString
		jal encerraPrograma
		
	#função que verefica se o número $a0 é ímpar
	#retorna 1 se for ímpar
	#retorna 0 se for par 
	ehImpar:
	  li $t0, 2
	  div $a0, $t0
	  
	  mfhi $v0
	  jr $ra
	#encerra o programa
	encerraPrograma:
		li $v0, 10
		syscall  
	#função que recebe uma string em$a0 e a imprime 
	imprimeString:
		li $v0, 4
		syscall
		jr $ra
	#função que lê um inteiro e o retorna em $v0
	leInteiro:
		li $v0, 5
		syscall
		jr $ra
