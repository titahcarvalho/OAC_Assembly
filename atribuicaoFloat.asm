.data
	msg: .asciiz "Forneça um numero decimal: "
	zero: .float 0.0
	
.text	#imprimindo a mensagem para o usuario
	li $v0, 4
	la $a0, msg
	syscall
	
	#lendo o numero
	li $v0, 6
	syscall #valor lido estara em $f0
	
	lwc1 $f1, zero
	add.s $f12,$f1,$f0
	
	#imrimindo o numero
	li $v0, 2
	syscall