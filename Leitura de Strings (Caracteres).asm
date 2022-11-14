.data 
	pergunta: .asciiz "Qual é o seu nome? "
	saudacao: .asciiz "ola, "
	nome: .space 25

.text
         #impressao da pergunta
         li $v0, 4
         la $a0, pergunta
         syscall
         
        #leitura do nome
        li $v0, 8
        la $a0, nome
        la $a1, 25 
        syscall 
        
        #mostra a saudacao
        li $v0, 4
        la, $a0, saudacao
        syscall 
        
        #mostra a saudacao
        li $v0, 4
        la, $a0, nome
        syscall 