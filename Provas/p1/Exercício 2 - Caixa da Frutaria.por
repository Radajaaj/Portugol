programa
{
	inclua biblioteca Util
	funcao inicio()
	{
		real mor, mac, peso, preco
		inteiro op

		faca{
			mor = 0.0
			mac = 0.0
			escreva("\n==========================")
			escreva("\n== Calculadora Frutaria ==")
			escreva("\n==========================\n")
			escreva("Escolha uma opção: \n1) Fazer uma compra\n2)Sair\nR: ")
			leia(op)

			escolha(op){
				caso 1:
					escreva("\n===== Fazer Uma Compra =====\n")
					escreva("\nQuantos kg de morango serão comprados?\nR: ")
					leia(mor)
					escreva("\nQuantos kg de maçã serão comprados?\nR: ")
					leia(mac)

					peso = mor + mac
					preco = (mor * 2.5) + (mac * 1.8)

					se(peso > 8 ou preco > 25){
						Util.aguarde(500)
						escreva("\n===== Disconto Aplicado na Compra! =====\n")
						Util.aguarde(500)
						escreva("O preço final da compra foi de ", preco * 0.9, "\n\n")
						Util.aguarde(2600)
					}senao{
						Util.aguarde(500)
						escreva("\n===== Compra Sem Disconto! =====\n")
						Util.aguarde(500)
						escreva("O preço final da compra foi de ", preco, "\n\n")
						Util.aguarde(2600)
					}
					pare
					
				caso 2:
					escreva("\n===== Até Mais! =====\n")
					Util.aguarde(800)
					pare

				caso contrario:
					escreva("\n===== Opção Inválida! =====\n")
					Util.aguarde(800)
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
 * @POSICAO-CURSOR = 1297; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */