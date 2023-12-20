.data #se nenhuma variável vier do .data, podemos omitir essa parte
	idade: .word 56 #valor inteiro na memória RAM
.text #.text é obrigatorio
	li $v0,1
	lw $a0, idade
	syscall
	
	
	