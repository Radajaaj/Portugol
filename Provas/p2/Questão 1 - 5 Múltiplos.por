programa
{
	
	funcao inicio()
	{
		inteiro vet[5], num, cont
		escreva("===========================\n")
		escreva("==Calculadora 5 Múltiplos==\n")
		escreva("===========================\n")

		escreva("Primeiramente, escolha um número inteiro:\nR: ")
		leia(num)


		para(cont = 0; cont < 5; cont ++){
				vet[cont] = num * (cont + 2)
			}
			
		escreva("\nA seguir, o seu vetor completo:\n")

		para(cont = 0; cont < 5; cont ++){

			escreva(vet[cont], ", ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */