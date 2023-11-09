programa
{
	
	funcao inicio()
	{
		inteiro opcao, lado, bolas
		escreva("==================================================", "\n")
		escreva("==Calculadora do Número de Bolas de Uma Pirâmide==", "\n")
		escreva("==================================================", "\n")

		bolas = 0
		opcao = 10

		escreva("\n", "Qual tipo de estrutura você deseja calcular?", "\n", "[1] Pirâmide", "\n", "[2] Tetraedro", "\n", "[0] Fechar o Programa", "\n", " R: ")
		leia(opcao)

		se((opcao > 2) ou (opcao < 0)){
			escreva("\n", "Opção Inválida", "\n")
			}senao se(opcao == 0){
				escreva("\n", "Fechando o Programa", "\n")
			}senao{
				escreva("\n", "Informe a quantidade de bolas que o lado da bola do seu poliedro possui", "\n", "R: ")
				leia(lado)
					se(lado <= 0){
						escreva("\n", "Valor Inválido", "\n")
					}senao se(lado > 0){
						se(opcao == 1){
							faca{
								bolas = lado * lado + bolas
								lado = lado - 1
							}enquanto(lado > 0)
							escreva("\n", "A sua pirâmide possui ", bolas, " bolas.", "\n")
						
						}senao se(opcao == 2){
							escreva("\n")
							faca{
							// Aqui eu usei a fórmula da soma de gauss para somar o número de bolinhas de cada camada
							bolas = ((lado * (lado + 1)) / 2) + bolas
							lado = lado - 1
							}enquanto(lado > 0)
							escreva("O seu tetraedro possui ", bolas, " bolas.", "\n")				
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
 * @POSICAO-CURSOR = 1399; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */