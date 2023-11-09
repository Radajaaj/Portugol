programa
{
	inclua biblioteca Util
	inclua biblioteca Matematica

	//Aqui estarão armazenadas as constantes relacionadas às variáveis da matriz
	//tipomatriz == 1 - com bordas / 2 - sem bordas
	inteiro linhamatriz, colunamatriz, tipomatriz

	
	funcao inicio(){
		//É o seguinte, eu fiz isso de última hora: tem duas matrizes, a game e a gametemp, inicialmente elas são iguais
		//a cada "ciclo" de jogo, as celulas da matriz game vao ser analisadas, e as regras serão aplicadas na gametemp
		//Depois que todas as células da game forem analisadas,  a game vai ficar igual à gametemp
		escreva("============================\n")
		escreva("=== Jogo da Vida Modular ===\n")
		escreva("============================\n\n")
		escreva("Está na hora de configurar o seu jogo!\n")
		setupgame()
		escreva("Voltou")

	}

	funcao setupgame(){
		//é nessa função que nós iremos configurar o jogo
		faca{
			escreva("\nEscola um tipo de matriz:\n1) Com bordas\n2) Bordas infinitas\nR: ")
			leia(tipomatriz)
			
		}enquanto((tipomatriz != 1) e (tipomatriz != 2))
	}

	funcao zeramatriz(){
	//essa função vai resetar todos os valores de uma matriz, indo de volta para 0

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 804; 
 * @DOBRAMENTO-CODIGO = [23];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */