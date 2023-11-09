programa
{
	
	
	//BIBLIOTECAS IMPORTADAS
	inclua biblioteca Matematica --> mat
	inclua biblioteca Tipos --> tip
	inclua biblioteca Util --> u
	inclua biblioteca Graficos --> g
	inclua biblioteca Mouse --> m
	inclua biblioteca Teclado --> t

	//VARIAVEIS DO JOGO
	inteiro COR = -16777216
	logico JOGO = verdadeiro
	const inteiro DIMENSAO_TELA = 500
	
	//FUNCAO PRINCIPAL
	funcao inicio()
	{

		inicializar()

		enquanto(JOGO == verdadeiro){

			pinta_retangulo()



			JOGO = nao t.tecla_pressionada(t.TECLA_ESC)
		}

		
	}

	//FUNCAO INICIALIZADORA
	funcao inicializar(){

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_titulo_janela("GAME OF LIFE")
		g.definir_dimensoes_janela(DIMENSAO_TELA, DIMENSAO_TELA)
		criar_janela()
		
	}


	//FUNCAO QUE CRIA A JANELA
	funcao criar_janela(){
		inteiro l, c
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
		para(l = 0; l <= 900; l += 100){
			para(c = 0; c <= 900; c += 100){
				g.definir_cor(COR)
				g.desenhar_retangulo(l, c, 100, 100, falso, falso)
			}
		}
		g.renderizar()
	}


	funcao pinta_retangulo(){
		inteiro xx ,yy
		real x, y
		enquanto(verdadeiro){
			enquanto(m.botao_pressionado(m.BOTAO_ESQUERDO)){
				xx = m.posicao_x()
				yy = m.posicao_y()
				x = mat.arredondar(tip.inteiro_para_real(xx) / 100, 0)
				y = mat.arredondar(tip.inteiro_para_real(yy) / 100, 0)

				se((x < xx) e (y < yy)){
					g.definir_cor(g.COR_VERDE)
					g.desenhar_retangulo(tip.real_para_inteiro(x * 100), tip.real_para_inteiro(y * 100), 100, 100, falso, verdadeiro)
					g.renderizar()
				}senao se((x > xx) e (y > yy)){
					g.definir_cor(g.COR_VERDE)
					g.desenhar_retangulo(tip.real_para_inteiro(x * 100) - 100, tip.real_para_inteiro(y * 100) - 100, 100, 100, falso, verdadeiro)
					g.renderizar()
				}

				
			}
		}
		
	}

	
	//FUNCAO FINALIZADORA
	funcao finalizar(){

		g.encerrar_modo_grafico()
		
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1185; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {xx, 63, 10, 2}-{yy, 63, 14, 2}-{x, 64, 7, 1}-{y, 64, 10, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */