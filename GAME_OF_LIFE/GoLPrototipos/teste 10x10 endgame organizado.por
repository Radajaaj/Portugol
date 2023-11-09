programa
{
	
inclua biblioteca Util
inteiro game[10][10],gametemp[10][10],contadorc=0, contadorl=0
	funcao inicio()
	{
		//É o seguinte, eu fiz isso de última hora: tem duas matrizes, a game e a gametemp, inicialmente elas são iguais
		//a cada "ciclo" de jogo, as celulas da matriz game vao ser analisadas, e as regras serão aplicadas na gametemp
		//Depois que todas as células da game forem analisadas,  a game vai ficar igual à gametemp
		escreva("=== Jogo da vida 10x10 ===\n")
		//a matriz game serve como o grid do jogo
		inteiro block = 0, populacao = 0, contador0l, contador0c,rel=0
		escreva("\nPrimeiramente, vamos preencher a matriz com 0 ou 1:\n")
		//Aqui nós iremos preencher as duas matrizes com zeros e uns
		preencher()
		//A partir do faca que o loop infinito do jogo começa
		faca{
			//Aqui ele vai usar 2 para's para desenhar a matriz no terminal
			desenhar()
			//Aqui que a mágica acontece. Os dois para's irão pegar cada célula, uma
			//por uma, e depois analisar suas vizinhas para definir o seu destino
			regras(populacao,contador0l=0,contador0c=0)
			//aqui será aplicada a funcao endgame, onde a matriz game é comparada com a matriz gametemp e todas
			//as instancias de valores iguais entre as matrizes são contadas, se esse valor for igual a 100, o jogo
			//é encerrado, pois ele entrou num loop infinito estável.
			block=endgame(rel,block)		
			// Aqui, caso a funcao endgame nao parar o jogo, nós fazemos com que a matriz game se torne idêntica à gametemp
			igual()
			Util.aguarde(2000)
			limpa()
			
			escreva("\n\nA seguir, a sua matriz: \n")
		}enquanto(block == 0)		
	}
		funcao preencher(){
		//Aqui nós iremos preencher as duas matrizes com zeros, para evitar erros
			para(contadorl = 0; contadorl < 10; contadorl ++){
				para(contadorc = 0; contadorc < 10; contadorc ++){
					game[contadorl][contadorc] = 0
					gametemp[contadorl][contadorc] = 0
			}
		}
		//Aqui nós iremos popular a matriz com os valores inteiros aleatorios entre 0 e 1
		para(contadorl = 1; contadorl < 9; contadorl ++){
			para(contadorc = 1; contadorc < 9; contadorc ++){				
				game[contadorl][contadorc] = Util.sorteia(0, 1)
				gametemp[contadorl][contadorc] = game[contadorl][contadorc]
			}
		}
		escreva("\nA seguir, a sua matriz: \n")
		}
		funcao desenhar(){
		//Aqui ele vai usar 2 para's para desenhar a matriz no terminal
			para(contadorl = 1; contadorl < 9; contadorl ++){
				para(contadorc = 1; contadorc < 9; contadorc ++){
				escreva(game[contadorl][contadorc]," ")
				}
				escreva("\n")
			}
			
		}
		funcao regras(inteiro populacao,inteiro contador0l,inteiro contador0c){
				//Os proximos 2 paras servem para selecionar uma célula no grid do jogo
			para(contadorl = 1; contadorl < 9; contadorl ++){
				para(contadorc = 1; contadorc < 9; contadorc ++){
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
			
		}
		funcao inteiro endgame(inteiro rel, inteiro block){
			rel=0
			 para(contadorl = 0; contadorl < 10; contadorl ++){
				para(contadorc = 0; contadorc < 10; contadorc ++){
					se(game[contadorl][contadorc] == gametemp[contadorl][contadorc]){
				        rel++
				         													 }
				     se(rel==100){
				         block=1
				       		   }
														}						
													}
					retorne block
												}
		funcao igual(){
			para(contadorl = 0; contadorl < 10; contadorl ++){
				para(contadorc = 0; contadorc < 10; contadorc ++){
					game[contadorl][contadorc] = gametemp[contadorl][contadorc]
				}
			}
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 882; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */