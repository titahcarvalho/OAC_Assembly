.data #se nenhuma vari�vel vier do .data, podemos omitir essa parte
	idade: .word 56 #valor inteiro na mem�ria RAM
.text #.text � obrigatorio
	li $v0,1
	lw $a0, idade
	syscall
	
	
	