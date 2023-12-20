.data
	msg: .asciiz "Forneça um numero decimal: "
	zero: .double 0.0
	
.text	#imprimindo a mensagem para o usuario
	li $v0, 4
	la $a0, msg
	syscall
	
	#lendo o numero
	li $v0, 7
	syscall #valor lido estara em $f0, sempre utiliza os pares
	
	ldc1 $f2, zero
	add.d $f12,$f2,$f0
	
	#imrimindo o numero
	li $v0, 3
	syscall