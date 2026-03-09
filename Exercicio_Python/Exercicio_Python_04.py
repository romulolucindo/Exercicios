## 1) Escreva um programa que peça à pessoa usuária para fornecer dois números e exibir o número maior.
num1 = input('Digite um numero: ')
num2 = input('Digite outro numero: ')

if num1 > num2:
    print(f'O maior numero é {num1}')
else:
    print(f'O maior numero é {num2}')

## 2) Escreva um programa que solicite o percentual de crescimento de produção de uma empresa e informe se houve um crescimento (porcentagem positiva) ou decrescimento (porcentagem negativa).

percent1 = float(
    input('Digite o percentual de crescimento da produção da empresa: '))
if percent1 > 0:
    print('Percentual positivo!')
else:
    print('Percentual negativo!')

## 3) Escreva um programa que determine se uma letra fornecida pela pessoa usuária é uma vogal ou consoante.
letra = input('Digite uma letra')
if letra == 'A' or 'E' or 'I' or 'O' or 'U':
    print('Vogal')
else:
    print('Consoante')


## 4) Escreva um programa que leia valores médios de preços de um modelo de carro por 3 anos consecutivos e exiba o valor mais alto e mais baixo entre esses três anos.

media_carro1 = int(input('Digite a média de preço de um fiat uno em 2024: '))
media_carro2 = int(input('Digite a média de preço de um fiat uno em 2025: '))
media_carro3 = int(input('Digite a média de preço de um fiat uno em 2026: '))

if media_carro1 >= media_carro2 and media_carro1 >= media_carro3:
    print('o valor da média mais alta é a do ano 2024')
elif media_carro2 >= media_carro3 and media_carro2 >= media_carro1:
    print('o valor da média mais alta é a do ano 2025')
else:
    print('o valor da média mais alta é a do ano 2026')

if media_carro1 <= media_carro2 and media_carro1 <= media_carro3:
    print('o valor da média mais baixa é a do ano 2024')
elif media_carro2 <= media_carro3 and media_carro2 <= media_carro1:
    print('o valor da média mais baixa é a do ano 2025')
else:
    print('o valor da média mais baixa é a do ano 2026')

## 5) Escreva um programa que pergunte sobre o preço de três produtos e indique qual é o produto mais barato para comprar.
prod1 = int(input('Digite o preço do produto 1: '))
prod2 = int(input('Digite o preço do produto 2: '))
prod3 = int(input('Digite o preço do produto 3: '))


if prod1 <= prod2 and prod1 <= prod3:
    print('O produto 1 é o mais barato')
elif prod2 <= prod3 and prod2 <= prod1:
    print('O produto 2 é o mais barato')
else:
    print('O produto 3 é o mais barato')


## 6) Escreva um programa que leia três números e os exiba em ordem decrescente.

lista = []
numero1 = int(input('Digite um numero: '))
lista.append(numero1)
numero2 = int(input('Digite mais um numero: '))
lista.append(numero2)
numero3 = int(input('Digite novamente mais um numero: '))
lista.append(numero3)

print(sorted(lista, reverse=True))

## 7) Escreva um programa que pergunte em qual turno a pessoa usuária estuda ("manhã", "tarde" ou "noite") e exiba a mensagem "Bom Dia!", "Boa Tarde!", "Boa Noite!", ou "Valor Inválido!", conforme o caso.

turno = int(input('Em qual turno você estuda? ( 1 = manhã, 2 = tarde, 3 = noite): '))

if turno == 1 :
    print('Bom Dia!')
elif turno == 2:
    print('Boa tarde!!')
elif turno == 3:
    print('Boa noite!!')
else:
    print('Valor Inválido!!')

## 8) Escreva um programa que peça um número inteiro à pessoa usuária e determine se ele é par ou ímpar. Dica: Você pode utilizar o operador módulo %.

numero_inteiro = int(input('Digite um número inteiro, vou te dizer se é par ou ímpar: '))

if numero_inteiro % 2 == 0 :
    print('É PAR!')
else:
    print('É ÍMPAR')


## 9) Escreva um programa que peça um número à pessoa usuária e informe se ele é inteiro ou decimal.
inteiro_ou_decimal = float(input('Digite um número e vou te dizer se é inteiro ou decimal!: '))

if inteiro_ou_decimal == int(inteiro_ou_decimal):
    print('Inteiro')
else:
    print('Decimal')
