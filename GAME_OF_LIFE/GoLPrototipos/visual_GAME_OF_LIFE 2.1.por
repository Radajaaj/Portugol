programa
{
	//BIBLIOTECAS DO CODIGO
	inclua biblioteca Tipos --> tip
	inclua biblioteca Texto --> tex
	inclua biblioteca Util --> u
	inclua biblioteca Matematica -->  m
	inclua biblioteca Teclado --> tec
	inclua biblioteca Graficos --> g
	

	//VARIAVEIS DO CODIGO
	const inteiro DIMENSAO = 500
	logico JOGO = verdadeiro
	inteiro mat[10][10], l, c, xx = 10, yy = 990

	
	//FUNCAO PRINCIPAL
	funcao inicio()
	{

		inicializar()
		menu()
		g.renderizar()
		
		enquanto(JOGO == verdadeiro){

			//desenha_linha()
			JOGO = nao tec.tecla_pressionada(tec.TECLA_ESC)
			
		}
		
	}


	//FUNCOES SECUNDARIAS
	funcao inicializar(){

		g.iniciar_modo_grafico(verdadeiro)
		g.definir_titulo_janela("GAME OF LIFE")
		g.definir_dimensoes_janela(DIMENSAO, DIMENSAO + 50)
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
		desenha_linhacoluna()
		//g.renderizar()
		
	}


	funcao desenha_linhacoluna(){
		inteiro x ,y
		para(x = xx; x <= yy; x += xx){
			
			g.definir_cor(g.COR_PRETO)
			g.desenhar_linha(0, x, 1000, x )
			
		}
		x = 0
		para(x = xx; x <= yy; x += xx){
			
			g.definir_cor(g.COR_VERDE)
			g.desenhar_linha(x, 0, x, 1000)
			
		}
		x = 0
	}


	funcao menu(){

		g.definir_cor(g.COR_AZUL)
		g.desenhar_retangulo(0, DIMENSAO, DIMENSAO, 500, falso, verdadeiro)
		g.definir_cor(g.COR_AMARELO)
		g.desenhar_texto(5, DIMENSAO + 20, "DIGITE AS POSIÇÕES EM QUE SERAO ADICIONADAS CELULAS: ")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 187; 
 * @DOBRAMENTO-CODIGO = [36, 49];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */