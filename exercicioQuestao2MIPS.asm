.text
	addi $s0, $zero, 2
	ori $s1, $zero, 3  #bit entre zero e 3, assim armazena em s1 o resultado
	ori $s2, $zero, 0
	ori $s3, $zero, 8
	while:
	beq $s3, $zero, saida
	andi $t0, $s0, 1
	beq $t0, $zero, salto1
	add $s2, $s2, $s1
	salto1:
	sll $s1, $s1, 1
	srl $s0, $s0, 1
	addi $s3, $s3,-1
	j while
	saida: