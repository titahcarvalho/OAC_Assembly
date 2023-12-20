.text 
	li $t0, 75
	
	#pode ser feito de uma outra maneira com o incremento do valor imediato
	addi $t1,$zero, 25  #constante zero e soma 25 a zero e atribui ele a $t1 pode ser um número negativo tbm
	#li $t1, 25
	add $s0,$t0,$t1
	
	addi $s1,$s0, 36