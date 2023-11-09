programa
{
	
inclua biblioteca Util
	funcao inicio()
	{

		//É o seguinte, eu fiz isso de última hora: tem duas matrizes, a game e a gametemp, inicialmente elas são iguais
		//a cada "ciclo" de jogo, as celulas da matriz game vao ser analisadas, e as regras serão aplicadas na gametemp
		//Depois que todas as células da game forem analisadas,  a game vai ficar igual à gametemp
		escreva("=== Jogo da vida 3x3 ===\n")
		//a matriz game serve como o grid do jogo
		inteiro game[5][5], gametemp[5][5]
		inteiro contadorl, contadorc, block = 0, populacao = 0, contador0l, contador0c

		escreva("\nPrimeiramente, vamos preencher a matriz com 0 ou 1:\n")


		//Aqui nós iremos preencher as duas matrizes com zeros, para evitar erros
		para(contadorl = 0; contadorl < 5; contadorl ++){
			para(contadorc = 0; contadorc < 5; contadorc ++){
				game[contadorl][contadorc] = 0
				gametemp[contadorl][contadorc] = 0
			}
		}

		//Aqui nós iremos popular a matriz com os valores escolhidos pelo usuario
		para(contadorl = 1; contadorl < 4; contadorl ++){
			para(contadorc = 1; contadorc < 4; contadorc ++){
				escreva("Posição ", contadorl, "x", contadorc, " é: ")
				leia(game[contadorl][contadorc])
				gametemp[contadorl][contadorc] = game[contadorl][contadorc]
			}
		}
		escreva("\nA seguir, a sua matriz: \n")



		
		//A partir do faca que o loop infinito do jogo começa
		faca{
			
			//Aqui ele vai usar 2 para's para desenhar a matriz no terminal
			para(contadorl = 1; contadorl < 4; contadorl ++){
				para(contadorc = 1; contadorc < 4; contadorc ++){
					escreva(game[contadorl][contadorc]," ")
				}
				escreva("\n")
			}

			
			//Aqui que a mágica acontece. Os dois para's irão pegar cada célula, uma
			//por uma, e depois analisar suas vizinhas para definir o seu destino
			
			//Os proximos 2 paras servem para selecionar uma célula no grid do jogo
			para(contadorl = 1; contadorl < 4; contadorl ++){
				para(contadorc = 1; contadorc < 4; contadorc ++){
				populacao = 0
			//Já os próximos 2 paras servirão para comparar a célula selecionada acima
			//com as 8 células em volta (Nota: Ela não se compara consigo mesma)
					para(contador0l = (contadorl - 1); contador0l < contadorl + 2; contador0l ++){
						
						para(contador0c = (contadorc - 1); contador0c < contadorc + 2; contador0c ++){

							se(contador0l != contadorl ou contador0c != contadorc){
								se(game[contador0l][contador0c] == 1){
								populacao = populacao + 1
								}
							}
						}
					}
					escreva(". ")
					Util.aguarde(10)
					//aqui são aplicadas as 4 regras: Morte por solidão (caso 1) e morte por superpopulação (caso 2)
					//Mantém igual (caso 3) e nascimento de celula nova (caso 4)
					//O resultado das regras é aplicado na matriz gametemp. Isso serve para que a game permaneça intacta
					//Até o fim do ciclo de análises
					se(populacao < 2){
						gametemp[contadorl][contadorc] = 0
					}senao se(populacao > 3){
						gametemp[contadorl][contadorc] = 0
					}senao se(populacao == 2){
						gametemp[contadorl][contadorc] = game[contadorl][contadorc]
					}senao se(populacao == 3){
						gametemp[contadorl][contadorc] = 1
					}
				}
			}
			// Aqui nós fazemos com que a matriz game se torne idêntica à gametemp
			para(contadorl = 0; contadorl < 5; contadorl ++){
				para(contadorc = 0; contadorc < 5; contadorc ++){
					game[contadorl][contadorc] = gametemp[contadorl][contadorc]
				}
			}






			escreva("\nDebug: Matriz game completa\n")
			para(contadorl = 0; contadorl < 5; contadorl ++){
				para(contadorc = 0; contadorc < 5; contadorc ++){
					escreva(game[contadorl][contadorc]," ")
				}
				escreva("\n")
			}
			escreva("\nDebug: Matriz gametemp completa\n")
			para(contadorl = 0; contadorl < 5; contadorl ++){
				para(contadorc = 0; contadorc < 5; contadorc ++){
					escreva(gametemp[contadorl][contadorc]," ")
				}

				
				escreva("\n")
			}



			
			Util.aguarde(2000)
			escreva("\n\nA seguir, a sua matriz: \n")
		}enquanto(block == 0)

		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3899; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */