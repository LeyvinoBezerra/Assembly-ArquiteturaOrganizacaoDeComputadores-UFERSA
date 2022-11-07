.data 
	#área para dados memória principal
	msg: .asciiz " Olá Mundo!" #Mensagem a ser exebida pelo usuario
.text
	#área para instrução do programa 
	
	li $v0, 4 #instrução para impressão de String 
	la $a0, msg #indiga o endereço onde está a mensagem
	syscall #faça! imprima
	
	
