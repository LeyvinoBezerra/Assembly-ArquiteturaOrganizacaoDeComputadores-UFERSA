.data		
	maior: .asciiz "O numero é maior que zero."
	menor: .asciiz "O numero é menor que zero."
	igual: .asciiz "O numero é igual a zero."
	
.text
	#ler o número inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	
	imprimeIgual:
		#imprime que o número é zero 
		li $v0, 4
		la $a0, igual
		syscall
		
		#encerra o programa
		li $v0, 10
		syscall
		
       imprimeMaior:
       		#imprime que o número é maior que zero 
      		li $v0, 4
      		la $a0, maior
      		syscall
      		
      		#encerra o programa
		li $v0,10
		syscall
      		
      imprimeMenor:
               #imprime que o número é menor que zero
               li $v0, 4
               la $a0, menor
               syscall 
     		 		  