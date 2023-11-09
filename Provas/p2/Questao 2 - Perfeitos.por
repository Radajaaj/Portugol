programa
{
	inclua biblioteca Util
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{

		inteiro resp = 0, retorno
		real num

		faca{
		
			escreva("===============================\n")
			escreva("==Calculadora Número Perfeito==\n")
			escreva("===============================\n")
			escreva("\nEscolha uma opção: \n1) Descobrir se um número é perfeito \n2) Sair \nR: ")
			leia(resp)

			escolha(resp){
				caso 1:
					escreva("\nDigite um número real\nR: ")
					leia(num)
					retorno = perfeito(num)
					escreva("\nO retorno é ", retorno)
					se(retorno == 1){
						escreva("\nIsso significa que o seu número é perfeito! Parabéns!")
						
					}senao{
						escreva("\nIsso significa que o seu número não é perfeito! :^(")
						}
					Util.aguarde(3000)

					pare

				caso 2:
					escreva("\nTchau!")
					Util.aguarde(1500)
					pare
			}
			limpa()
		}enquanto(resp != 2)
	}

	funcao inteiro perfeito(real num){
		real div, divarr, contador, soma = 0.0
		
		se (num > 0){
			para(contador = 1.0; contador < num; contador ++){
				div = num / contador
				divarr = div - (div - mat.arredondar(div, 0))

				se(div / divarr == 1){
					soma = soma + contador
					}	
				}
				se(soma == num){
					retorne 1
				}senao{
					retorne 0
				}	
			}	
		senao{
			retorne 0
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 775; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */