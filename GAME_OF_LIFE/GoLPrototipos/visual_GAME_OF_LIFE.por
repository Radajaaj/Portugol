programa{
	
	inclua biblioteca Mouse --> m
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	inclua biblioteca Graficos --> g
	inclua biblioteca Tipos --> ti
	inclua biblioteca Matematica --> ma

	//criando as contantes que servem para dimensionar a janela
	const inteiro LARGURA_JANELA = 1000, ALTURA_JANELA = 1000, TAMANHO_RETANGULO = 100
	//pontuacao, nao sera usada
	inteiro populacao = 0, c, l
	inteiro mouse_x = 0, mouse_y = 0
	inteiro casa_x, casa_y
	
	funcao inicio(){
	
		montar_janela()
		enquanto(verdadeiro){
			colorir_janela()
			posicao_mouse()
			colorir_casa()
			g.renderizar()	
		}
	}
	funcao montar_janela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(LARGURA_JANELA, ALTURA_JANELA)
		g.definir_titulo_janela("GAME OF LIFE")
	}
	funcao colorir_janela(){
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
		g.definir_cor(g.COR_PRETO)
		para(l = 0; l <= 900; l += 100){
			para(c = 0; c <= 900; c += 100){
				g.desenhar_retangulo(l, c, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, falso)
			}
		}
	}
	funcao desenhar_painel(){
		
		g.definir_cor(g.COR_AZUL)
		g.desenhar_retangulo(0, 0, LARGURA_JANELA, 50, falso, verdadeiro)
		g.definir_cor(g.COR_AMARELO)
		g.definir_tamanho_texto(25.0)
		g.desenhar_texto(10, 10, "POPULACAO: ")
		
	}
	funcao posicao_mouse(){
		
		enquanto(m.botao_pressionado(m.BOTAO_ESQUERDO)){
			mouse_x = m.posicao_x()
			mouse_y = m.posicao_y()
			limpa()
			escreva("X: ", mouse_x, " Y: ", mouse_y)
		}
	}
	funcao colorir_casa(){
		para(l = 100; l <= 1000; l += 100){
			para(c = 100; c <= 1000; c += 100){
				se((mouse_x < l) e (mouse_y < c)){
				g.definir_cor(g.COR_AZUL)
				g.desenhar_retangulo(l - 100, c - 100, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(l - 100, c - 100, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, falso)
				}
			}
		}
		para(l = 100; l <= 1000; l += 100){
			para(c = 100; c <= 1000; c += 100){
				se((mouse_x < l) e (mouse_y < c)){
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(l, c, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, verdadeiro)
				//g.definir_cor(g.COR_PRETO)
				//g.desenhar_retangulo(l, c - 100, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, falso)
				}
			}
		}
		para(l = 100; l <= 1000; l += 100){
			para(c = 100; c <= 1000; c += 100){
				se((mouse_x < l) e (mouse_y < c)){
				//g.definir_cor(g.COR_BRANCO)
				//g.desenhar_retangulo(l - 100, c, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(l, c, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, falso)
				}
			}
		}
		para(l = 100; l <= 1000; l += 100){
			para(c = 100; c <= 1000; c += 100){
				se((mouse_x < l) e (mouse_y < c)){
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(l - 100, c, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(l - 100, c, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, falso)
				}
			}
		}
		para(l = 100; l <= 1000; l += 100){
			para(c = 100; c <= 1000; c += 100){
				se((mouse_x < l) e (mouse_y < c)){
				g.definir_cor(g.COR_BRANCO)
				g.desenhar_retangulo(l, c - 100, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, verdadeiro)
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(l, c - 100, TAMANHO_RETANGULO, TAMANHO_RETANGULO, falso, falso)
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
 * @POSICAO-CURSOR = 3400; 
 * @DOBRAMENTO-CODIGO = [16, 26, 31, 41];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */