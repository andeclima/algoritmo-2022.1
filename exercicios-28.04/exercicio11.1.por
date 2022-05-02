/*
QUESTÃO 1
1. Faça um programa que receba a idade, o peso, a altura, a cor dos olhos 
   (A - azul; P - preto; V - verde; e C - castanho) e a cor dos cabelos 
   (P - preto; C - castanho; L - louro; e R - ruivo) de seis pessoas, 
   e que calcule e mostre:
a) a quantidade de pessoas com idade superior a 50 anos e peso inferior a 60 kg;
b) a média das idades das pessoas com altura inferior a 1,50 m;
c) a porcentagem de pessoas com olhos azuis entre todas as pessoas analisadas; e
d) a quantidade de pessoas ruivas e que não possuem olhos azuis.
*/

programa {
	
	inclua biblioteca Matematica --> m
	
	funcao inicio() {

		inteiro idade, qtdMais50, qtdRuivas, somaIdade, qtdMenor15, qtdOlhoAzul
		real peso, altura, mediaMenor15, porcAzul
		cadeia corOlhos, corCabelo
		
		qtdMais50 = 0
		somaIdade = 0
		qtdMenor15 = 0
		qtdOlhoAzul = 0
		qtdRuivas = 0
		para (inteiro i = 1; i <= 6; i = i + 1) {
			escreva("Dados da Pessoa #", i, "\n")

			// Leitura dos dados
			escreva("Idade (anos): ")
			leia(idade)
			escreva("Peso (Kg): ")
			leia(peso)
			escreva("Altura (m): ")
			leia(altura)
			escreva("Cor dos olhos (A - azul, P - preto, V - verde, C - castanho): ")
			leia(corOlhos)
			escreva("Cor dos olhos (P - preto, C - castanho, L - louro, R - ruivo): ")
			leia(corCabelo)

			// Item A
			se (idade > 50 e peso < 60.0) {
				qtdMais50 = qtdMais50 + 1
			}
			// Item B
			se (altura < 1.5) {
				somaIdade += idade
				qtdMenor15 += 1
			}
			// Item C
			se (corOlhos == "A") {
				qtdOlhoAzul += 1
			} senao {
				qtdRuivas += 1
			}
		}
		
		porcAzul = qtdOlhoAzul / 6 * 100.0
		escreva("a) Qtd pessoas com mais de 50 anos e menos que 60 Kg: ", qtdMais50, "\n")
		se (qtdMenor15 > 0) {
			mediaMenor15 = somaIdade / qtdMenor15
			escreva("b) Média da idade das pessoas com menos que 1,5 m: ", m.arredondar(mediaMenor15, 0), "\n")
		} senao {
			escreva("b) Média da idade das pessoas com menos que 1,5 m: ", "Não se aplica", "\n")
		}
		escreva("c) Porcentagem de pessoas com olhos azuis: ", m.arredondar(porcAzul, 1), "\n")
		escreva("d) Qtd de pessoas ruivas sem olhos azuis: ", qtdRuivas)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 981; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */