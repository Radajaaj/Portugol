programa
{
	inclua biblioteca Util
	inclua biblioteca Matematica --> mat
	
	inteiro cartela[4][9], analise = 999, contl, contc


	funcao inicio()
	{
		para(contl = 0; contl < 4; contl ++){
			para(contc = 0; contc < 9; contc ++){
				cartela[contl][contc] = 999
			}
		}
		

		escreva("A sua cartela é\n\n")

		para(contc = 0; contc < 9; contc ++){
			cartela[0][contc] = Util.sorteia(1, 10)
			cartela[0][contc] = cartela[0][contc] + (contc * 10)
		}

		para(contc = 0; contc < 9; contc ++){
			para(contl = 1; contl < 2; contl ++){
				faca{
					analise = Util.sorteia(1, 10)
					analise = analise + (contc * 10)
					cartela[contl][contc] = analise
				}enquanto(analise == cartela[contl - 1][contc])
				
			}
		}

		para(contc = 0; contc < 9; contc ++){
			para(contl = 2; contl < 3; contl ++){

				faca{
					faca{
						analise = Util.sorteia(1, 10)
						analise = analise + (contc * 10)
						cartela[contl][contc] = analise
					}enquanto(analise == cartela[contl - 1][contc])
				}enquanto(analise == cartela[contl - 2][contc])
				
			
			}
			
		}	

		bubble()

		para(contl = 0; contl < 3; contl ++){
			para(contc = 0; contc < 9; contc ++){
				escreva(cartela[contl][contc], ", ")
			}
			escreva("\n")
		}
	
	}
	
	funcao bubble(){
		inteiro temp, temp2

		
		para(contc = 0; contc < 9; contc ++){

			para(contl = 0; contl < 3; contl ++){
				temp = cartela[contl][contc]
				temp2 = cartela[contl + 1][contc]
				
				se(temp > temp2){
					cartela[contl + 1][contc] = temp
					cartela[contl][contc] = temp2		
				}	
			}
		}
		para(contc = 0; contc < 9; contc ++){

			para(contl = 0; contl < 3; contl ++){
				temp = cartela[contl][contc]
				temp2 = cartela[contl + 1][contc]
				
				se(temp > temp2){
					cartela[contl + 1][contc] = temp
					cartela[contl][contc] = temp2		
				}	
			}
		}
	}
}





















/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1110; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {cartela, 6, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */