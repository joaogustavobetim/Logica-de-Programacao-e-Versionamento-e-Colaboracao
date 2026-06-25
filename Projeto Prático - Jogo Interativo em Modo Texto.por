programa
{
	funcao inicio()
	{
		inteiro vidaHeroi = 100
		inteiro vidaDragao = 150
		inteiro opcao
		inteiro item

		// Itens da mochila
		inteiro pocaoCura = 2
		inteiro bombaMagica = 2
		inteiro escudoDivino = 1
		inteiro flechaEncantada = 3

		logico defesaAtiva = falso

		escreva("====================================\n")
		escreva("   A LENDA DA CAVERNA SOMBRIA\n")
		escreva("====================================\n")
		escreva("Voce e um heroi enviado para derrotar\n")
		escreva("o lendario Dragao das Sombras!\n\n")

		// Laco principal do jogo
		enquanto (vidaHeroi > 0 e vidaDragao > 0)
		{
			escreva("\n------------------------------------\n")
			escreva("VIDA DO HEROI: ", vidaHeroi, "\n")
			escreva("VIDA DO DRAGAO: ", vidaDragao, "\n")
			escreva("------------------------------------\n")

			escreva("Escolha sua acao:\n")
			escreva("1 - Atacar com a espada\n")
			escreva("2 - Defender-se\n")
			escreva("3 - Usar item da mochila\n")
			escreva("Opcao: ")
			leia(opcao)

			se (opcao == 1)
			{
				escreva("\nVoce golpeia o dragao com sua espada!\n")
				vidaDragao = vidaDragao - 25
			}
			senao se (opcao == 2)
			{
				escreva("\nVoce ergue seu escudo e reduz o proximo dano.\n")
				defesaAtiva = verdadeiro
			}
			senao se (opcao == 3)
			{
				escreva("\nItens disponiveis:\n")
				escreva("1 - Pocao de Cura (", pocaoCura, ")\n")
				escreva("2 - Bomba Magica (", bombaMagica, ")\n")
				escreva("3 - Escudo Divino (", escudoDivino, ")\n")
				escreva("4 - Flecha Encantada (", flechaEncantada, ")\n")
				escreva("Escolha o item: ")
				leia(item)

				se (item == 1)
				{
					se (pocaoCura > 0)
					{
						vidaHeroi = vidaHeroi + 30

						se (vidaHeroi > 100)
						{
							vidaHeroi = 100
						}

						pocaoCura = pocaoCura - 1
						escreva("\nVoce recuperou 30 pontos de vida!\n")
					}
					senao
					{
						escreva("\nAs pocoes acabaram!\n")
					}
				}
				senao se (item == 2)
				{
					se (bombaMagica > 0)
					{
						vidaDragao = vidaDragao - 40
						bombaMagica = bombaMagica - 1
						escreva("\nA bomba magica explodiu causando 40 de dano!\n")
					}
					senao
					{
						escreva("\nAs bombas magicas acabaram!\n")
					}
				}
				senao se (item == 3)
				{
					se (escudoDivino > 0)
					{
						defesaAtiva = verdadeiro
						escudoDivino = escudoDivino - 1
						escreva("\nO Escudo Divino protegera voce do proximo ataque!\n")
					}
					senao
					{
						escreva("\nO Escudo Divino ja foi utilizado!\n")
					}
				}
				senao se (item == 4)
				{
					se (flechaEncantada > 0)
					{
						vidaDragao = vidaDragao - 20
						flechaEncantada = flechaEncantada - 1
						escreva("\nA Flecha Encantada atinge o dragao!\n")
					}
					senao
					{
						escreva("\nVoce nao possui mais Flechas Encantadas!\n")
					}
				}
				senao
				{
					escreva("\nItem invalido!\n")
				}
			}
			senao
			{
				escreva("\nOpcao invalida!\n")
			}

			// Turno do dragao
			se (vidaDragao > 0)
			{
				escreva("\nO Dragao das Sombras ataca!\n")

				se (defesaAtiva == verdadeiro)
				{
					escreva("Seu escudo absorveu grande parte do dano!\n")
					vidaHeroi = vidaHeroi - 10
					defesaAtiva = falso
				}
				senao
				{
					vidaHeroi = vidaHeroi - 20
					escreva("Voce sofreu 20 pontos de dano!\n")
				}
			}
		}

		escreva("\n====================================\n")

		se (vidaDragao <= 0)
		{
			escreva("VITORIA!\n")
			escreva("O lendario Dragao das Sombras foi derrotado!\n")
			escreva("O reino esta salvo gracas a sua coragem!\n")
		}
		senao
		{
			escreva("GAME OVER\n")
			escreva("O heroi caiu em batalha...\n")
			escreva("O Dragao das Sombras dominou o reino.\n")
		}

		escreva("====================================\n")
	}
}
