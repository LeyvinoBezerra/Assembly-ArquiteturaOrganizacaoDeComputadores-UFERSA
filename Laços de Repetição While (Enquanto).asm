.data
         space: .byte ' '
         
.text
	#ler o numero
	li $v0, 5
	syscall
	
	move $t0, $v0 #valor lido 
	move $t1, $zero
	
	laco:   
	      
	       bgt $t1, $t0, caiFora
	       
	       #imprimir St1
	       li $v0, 1
	       move $a0, $t1
	       syscall
	       
	       
	       #imprimir espaco em branco
	       li $v0, 4
	       la $a0, space
	       syscall
	       
	       addi $t1, $t1, 1
	       j laco
	caiFora:
	       
	
