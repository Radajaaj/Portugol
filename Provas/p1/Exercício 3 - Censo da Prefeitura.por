programa
{
	inclua biblioteca Util	
	funcao inicio()
	{
		real res, fil = 0.0, sal = 0.0
		inteiro pes = 0, numf = 0, pob = 0
		//res = resposta da 1° pergunta; sal = Salário de todos juntos; pes = numero de pessoas que responderam; numf = numero de filhos da pessoa
		//fil = total de filhos/ pob = n de pessoas com salário abaixo de 1210.15
		faca{
			escreva("\n=====================================")
			escreva("\n== Super Calculadora da Prefeitura ==")
			escreva("\n=====================================\n")
			escreva("\nPrimeiramente, informe o seu salário\n(Digite um número negativo finalizar a leitura dos dados)\nR: ")
			leia(res)
			se(res >= 0){
				sal = res + sal
				pes = pes + 1
				se(res < 1210.15){
					pob = pob + 1
				}

				escreva("\nQuantos filhos você tem?\nR: ")
				leia(numf)
				se(numf >= 0){
					fil = fil + numf
				}
			}
		}enquanto(res >= 0)

		escreva("\nA média de salário da população é de ", sal / pes)
		Util.aguarde(900)
		escreva("\nA média do número de filhos da população é de ", fil / pes)
		Util.aguarde(900)
		escreva("\nO percentual de pessoas com salário menor que 1.210,15 reais é de ", (pob * 100) / pes, "%\n\n")
		Util.aguarde(900)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 121; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */