.text 
	li $t0, 32
	li $t1, 5
	#srl pega apenas a parte inteira
	srl $s2, $t1, 2  #dividir o 32 por 4, andar 2 casas para a direita
	
	div $t0, $t1
	
	#parte inteira em $s0
	
	mflo $s0
	#resto em $s1
	mfhi $s1
	