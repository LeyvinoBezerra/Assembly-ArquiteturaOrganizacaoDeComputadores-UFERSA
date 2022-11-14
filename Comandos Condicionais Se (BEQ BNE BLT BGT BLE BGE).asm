.data
       msg: .asciiz "forneça um número: "
       par: .asciiz  "O número é par: "
       impar: .asciiz  "O número é impar: "
.text      
         #imprimindo a mensagem para usuario 
         li $v0, 4
         la $a0, msg
         syscall
         
        #lendo número
        li $v0, 5
        syscall #valor lido estará em $f0
        
        li $t0, 2
        div $v0, $t0
        
        mfhi $t1 #possui a divisão por zero 
        
        beq $t1, $zero, imprimePar
        li $v0, 4
        la $a0, impar
        syscall
        
        #Encerrar o programa
        li $v0, 10
        syscall
        
          imprimePar:
                  li $v0, 4
                  la $a0, par
                  syscall