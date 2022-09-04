.data
	f: .word 0
	g: .word 10 
	A: .word 1, 2, 3, 4, 5 #vetor inicializado
	B: .word 5, 4, 3, 2, 1       #vetor de 10 posisao inicializada

.text

	la $s7, B      #end. B
	la $s6, A      #end. A
	
	lw $t0, 16($s7)     #Valor[4]
        sll $t1, $t0, 2
        
        la