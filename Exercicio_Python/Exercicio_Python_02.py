
# Calculadora com operadores
# Crie um programa que solicite dois valores numéricos à pessoa usuária e imprima a soma dos dois valor

valor1 = int(input('Digite um numero! '))
valor2 = int(input('Digite outro numero, mas não pode ser 0 '))
print(
    f'Você digitou o valor {valor1} e o {valor2}, a soma desses valores é {valor1 + valor2}')


# Crie um programa que solicite três valores numéricos à pessoa usuária e imprima a soma dos três valores.
valor3 = int(input('Digite mais um outro numero! '))
print(f'A Soma dos 3 primeiros valores é {valor1 + valor2 + valor3}')

# Crie um programa que solicite dois valores numéricos à pessoa usuária e imprima a subtração do primeiro pelo o segundo valor.
print(f'A subtração do {valor1} e do {valor2} é {valor1 - valor2}')

# Crie um programa que solicite dois valores numéricos à pessoa usuária e imprima a multiplicação dos dois valores.
print(f'A multiplicação do {valor1} com o {valor2} é {valor1 * valor2}')

# Crie um programa que solicite dois valores numéricos, um numerador e um denominador, e realize a divisão entre os dois valores. Deixe claro que o valor do denominador não pode ser 0.
print(f'A divisão do {valor1} por {valor2} é {valor1 / valor2}')


# Crie um programa que solicite dois valores numéricos, um operador e uma potência, e realize a exponenciação entre esses dois valores.
print(f'A potencialização do {valor1} por {valor2} é {valor1 ** valor2}')


# Crie um programa que solicite dois valores numéricos, um numerador e um denominador e realize a divisão inteira entre os dois valores. Deixe claro que o valor do denominador não pode ser 0.
print(f'A divisão inteira do {valor1} por {valor2} é {valor1 // valor2}')


# Crie um programa que solicite dois valores numéricos, um numerador e um denominador, e retorne o resto da divisão entre os dois valores. Deixe claro que o valor do denominador não pode ser 0.
print(f'O resto da divisão do {valor1} por {valor2} é {valor1 % valor2}')


# Crie um código que solicita 3 notas de um estudante e imprima a média das notas.
media = (valor1 + valor2 + valor3)
print(f'A média entre as 3 notas é de {media / 3}')


# Crie um código que calcule e imprima a média ponderada dos números 5, 12, 20 e 15 com pesos respectivamente iguais a 1, 2, 3 e 4.
media_ponderada = (((5*1) + (12*2) + (20*3) + (15*4)) / (1 + 2 + 3 + 4))
print(f'A média ponderada dos valores são {media_ponderada}')
