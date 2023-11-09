programa
{
	inclua biblioteca Util
	funcao inicio()
	{
		real nota[5]
		real total = 0.0, res
		inteiro contador
		escreva("\n================================")
		escreva("\n== Super Calculadora de Notas ==")
		escreva("\n================================\n")


		para(contador = 0; contador <= 4; contador ++){
			res = 0.0
			faca{
				escreva("\nInforme a sua ", contador + 1,"° nota\nR: ")
				leia(res)
				se(res >= 0.0 e res <= 10.0){
					nota[contador] = res
					Util.aguarde(200)
					escreva("Nota válida adicionada\n")
					Util.aguarde(200)
				}senao{
					Util.aguarde(200)
					escreva("Nota inválida! Tente de novo.\n")
					Util.aguarde(200)
				}
			}enquanto(res <= 0 ou res >= 10)
		}
		Util.aguarde(100)
		escreva("\nCalculando a média das notas...\n")
		Util.aguarde(1250)
		
		para(contador = 0; contador <= 4; contador ++){
			total = total + nota[contador]
		}
	escreva("\nA média final de suas notas foi de ", total / 5, "\n")
	Util.aguarde(1000)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 701; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */