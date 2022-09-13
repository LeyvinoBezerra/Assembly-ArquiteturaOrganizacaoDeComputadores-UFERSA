.data
	saudacao: .asciiz "Olá, por favor! foneça sua idade: "
	saida: .asciiz "sua idade é: "
.text
	li $v0, 4 # imprimir uma string
	la $a0, saudacao
	syscall
	
	li  $v0, 5 #leitura de inteiro
	syscall
	
	move $t0, $v0  #valot fonecido em t0
	
	li $v0, 4 # imprimir uma string
	la $a0, saida
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall