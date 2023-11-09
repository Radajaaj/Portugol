programa
{
	inclua biblioteca Util
	funcao inicio()
	{
		inteiro op, com, ter
		faca{
		escreva("\n========================================")
		escreva("\n==Análise de Rendimento de Resistência==")
		escreva("\n========================================\n")
		escreva("Escolha uma opção: \n1) Calcular rendimento\n2)Sair\nR: ")
		leia(op)
		escolha(op){
			caso 1:
				ter = 0
				com = 0
				escreva("\n===== Calcular Rendimento =====\n")
				escreva("Informe o horário de começo da partida\n(Utilize o formato 24h)\nR: ")
				leia(com)
				escreva("\nInforme o horário de término da partida\n(Utilize o formato 24h)\nR: ")
				leia(ter)

				se(ter < com){
					ter = ter + 24
				}

				escreva("\nSeu rendimento foi de ", (ter - com), " horas. Parabéns!")
				Util.aguarde(1500)
				pare

			caso 2:
				Util.aguarde(150)
				escreva("\n===== Até Mais! =====\n")
				Util.aguarde(150)
				
				pare

			caso contrario:
				escreva("\n===== Opção Inválida! =====\n")
				Util.aguarde(350)
				pare
		}
		}enquanto(op != 2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1008; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */