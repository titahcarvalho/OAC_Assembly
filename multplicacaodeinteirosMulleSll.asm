.text
	#sll shift left logico
	
	li $t0, 12
	addi $t1, $zero, 10
	sll $s1, $t1, 10 # multiplicar por 2^10 = 1024
	
	mul $s0, $t0, $t1 #se colocar $s1 dá 122280
	
	li $v0,1
	move $a0, $s0
	syscall 