//Aluno: Vitor Mayorca Camargo
programa
{
	inclua biblioteca Util
	funcao inicio()
	{
		logico estac[10] = {verdadeiro, falso, falso, verdadeiro, falso, verdadeiro, falso, falso, falso, verdadeiro}
		//Alguns carros já vêm estacionados, conforme o enunciado do exercício
		//Verdadeiro = vaga ocupada; Falso = vaga desocupada
		//
		inteiro op = 0, vaga, op3 = 0, vagad

		faca{
			vaga = 0
			escreva("==========================================\n")
			escreva("==Gerenciador de Vagas do Estacionamento==\n")
			escreva("==========================================\n\n")
			escreva("Selecione uma opção: \n1) Adicionar um carro em uma vaga\n2) Retirar um carro de uma vaga\n")
			escreva("3) Consultar vagas disponíveis\n4) Finalizar o programa\n")
			escreva("R: ")
			leia(op)
			escolha(op){
				
				caso 1:
					escreva("\n=== Adicionar um Carro em Uma Vaga ===\n")				
					escreva("Escolha uma vaga para colocar um carro\n(Nunca escolha números maiores que 10)\nR: ")
					leia(vaga)
					//Para o conforto do usuário, o programa automaticamente converte a vaga selecionada (de 1 a 10)
					//para o seu respectivo valor no vetor (que vai de 0 a 9)	
					vaga = vaga - 1
					se(estac[vaga] == falso){
						estac[vaga] = verdadeiro
						escreva("\nCarro estacionado com sucesso!\n")
						Util.aguarde(2000)
					}senao{
						escreva("\nEsta vaga já está ocupada!\n")
						Util.aguarde(2000)
					}
					pare	
					
				caso 2:
					escreva("\n=== Remover um Carro em Uma Vaga ===\n")	
					escreva("Escolha uma vaga para remover um carro\n(Nunca escolha números maiores do que 10)\nR: ")
					leia(vaga)
					//Para o conforto do usuário, o programa automaticamente converte a vaga selecionada (de 1 a 10)
					//para o seu respectivo valor no vetor (que vai de 0 a 9)
					vaga = vaga - 1
					se(estac[vaga] == verdadeiro){
						estac[vaga] = falso
						escreva("\nCarro removido com sucesso!\n")
						Util.aguarde(2000)
					}senao{
						escreva("\nEsta vaga já está vazia!\n")
						Util.aguarde(2000)
					}	
					pare	
					
				caso 3:
					faca{					
					escreva("\n\n== Consultar Vagas Disponíveis ==\n")
					escreva("Escolha uma opção:\n1) Consultar o número de vagas disponíveis\n")
					escreva("2) Avaliar a disponibilidade de todas as vagas\n3) Voltar\nR: ")
					vagad = 0
					leia(op3)					
					escolha(op3){
						caso 1:
							para(inteiro posicao = 0; posicao < 10; posicao ++){
								se(estac[posicao] == falso){
									vagad = vagad + 1
								}
							}
							escreva("\nExistem ", vagad," vagas disponíveis!\n")
							Util.aguarde(1500)
							pare
						caso 2:
							para(inteiro posicao = 0; posicao < 10; posicao ++){
								se(estac[posicao] == verdadeiro){
									escreva("\nA vaga ", (posicao + 1)," está ocupada!")
								}senao{
									escreva("\nA vaga ", (posicao + 1)," está livre!")
								}
								Util.aguarde(500)
							}
							Util.aguarde(2000)	
					}
					}enquanto(op3 != 3)	
					pare
					
				caso 4:
					escreva("\n\n=============== Até mais! ================\n")
					pare
					
				caso contrario:
					escreva("\nOpcao invalida")
					
			}
		}enquanto(op != 4)	
	}
}