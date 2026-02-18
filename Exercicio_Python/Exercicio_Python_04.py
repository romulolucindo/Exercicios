# 1) Escreva um programa que peça à pessoa usuária para fornecer dois números e exibir o número maior.
num1 = input('Digite um numero: ')
num2 = input('Digite outro numero: ')

if num1 > num2:
    print(f'O maior numero é {num1}')
else:
    print(f'O maior numero é {num2}')

# 2) Escreva um programa que solicite o percentual de crescimento de produção de uma empresa e informe se houve um crescimento (porcentagem positiva) ou decrescimento (porcentagem negativa).

percent1 = float(
    input('Digite o percentual de crescimento da produção da empresa: '))
if percent1 > 0:
    print('Percentual positivo!')
else:
    print('Percentual negativo!')

# 3) Escreva um programa que determine se uma letra fornecida pela pessoa usuária é uma vogal ou consoante.
letra = input('Digite uma letra')
if letra == 'A' or 'E' or 'I' or 'O' or 'U':
    print('Vogal')
else:
    print('Consoante')


# 4) Escreva um programa que leia valores médios de preços de um modelo de carro por 3 anos consecutivos e exiba o valor mais alto e mais baixo entre esses três anos.

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

# 5) Escreva um programa que pergunte sobre o preço de três produtos e indique qual é o produto mais barato para comprar.
prod1 = int(input('Digite o preço do produto 1: '))
prod2 = int(input('Digite o preço do produto 2: '))
prod3 = int(input('Digite o preço do produto 3: '))


if prod1 <= prod2 and prod1 <= prod3:
    print('O produto 1 é o mais barato')
elif prod2 <= prod3 and prod2 <= prod1:
    print('O produto 2 é o mais barato')
else:
    print('O produto 3 é o mais barato')


# 6) Escreva um programa que leia três números e os exiba em ordem decrescente.

lista = []
numero1 = int(input('Digite um numero'))
lista.append(numero1)
numero2 = int(input('Digite mais um numero'))
lista.append(numero2)
numero3 = int(input('Digite novamente mais um numero'))
lista.append(numero3)

print(sorted(lista, reverse=True))

# 7) Escreva um programa que pergunte em qual turno a pessoa usuária estuda ("manhã", "tarde" ou "noite") e exiba a mensagem "Bom Dia!", "Boa Tarde!", "Boa Noite!", ou "Valor Inválido!", conforme o caso.

# 8) Escreva um programa que peça um número inteiro à pessoa usuária e determine se ele é par ou ímpar. Dica: Você pode utilizar o operador módulo %.

# 9) Escreva um programa que peça um número à pessoa usuária e informe se ele é inteiro ou decimal.

# Momento dos projetos
# 10) Um programa deve ser escrito para ler dois números e, em seguida, perguntar à pessoa usuária qual operação ele deseja realizar. O resultado da operação deve incluir informações sobre o número - se é par ou ímpar, positivo ou negativo e inteiro ou decimal.

# 11) Escreva um programa que peça à pessoa usuária três números que representam os lados de um triângulo. O programa deve informar se os valores podem ser utilizados para formar um triângulo e, caso afirmativo, se ele é equilátero, isósceles ou escaleno. Tenha em mente algumas dicas:

# Três lados formam um triângulo quando a soma de quaisquer dois lados for maior que o terceiro;
# Triângulo Equilátero: três lados iguais;
# Triângulo Isósceles: quaisquer dois lados iguais;
# Triângulo Escaleno: três lados diferentes.
# 12) Um estabelecimento está vendendo combustíveis com descontos variados. Para o etanol, se a quantidade comprada for até 15 litros, o desconto será de 2% por litro. Caso contrário, será de 4% por litro. Para o diesel, se a quantidade comprada for até 15 litros, o desconto será de 3% por litro. Caso contrário, será de 5% por litro. O preço do litro de diesel é R$ 2,00 e o preço do litro de etanol é R$ 1,70. Escreva um programa que leia a quantidade de litros vendidos e o tipo de combustível (E para etanol e D para diesel) e calcule o valor a ser pago pelo cliente. Tenha em mente algumas dicas:

# O do valor do desconto será a multiplicação entre preço do litro, quantidade de litros e o valor do desconto.
# O valor a ser pago por um cliente será o resultado da multiplicação do preço do litro pela quantidade de litros menos o valor de desconto resultante do cálculo.
# 13) Em uma empresa de venda de imóveis você precisa criar um código que analise os dados de vendas anuais para ajudar a diretoria na tomada de decisão. O código precisa coletar os dados de quantidade de venda durante os anos de 2022 e 2023 e fazer um cálculo de variação percentual. A partir do valor da variação, deve ser enviada às seguintes sugestões:

# Para variação acima de 20%: bonificação para o time de vendas.
# Para variação entre 2% e 20%: pequena bonificação para time de vendas.
# Para variação entre 2% e -10%: planejamento de políticas de incentivo às vendas.
# Para variação abaixo de -10%: corte de gastos.
