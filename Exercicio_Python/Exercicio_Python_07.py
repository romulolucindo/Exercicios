# 1) Faça um programa que tenha a seguinte lista contendo os valores de gastos de uma empresa de papel [2172.54, 3701.35, 3518.09, 3456.61, 3249.38, 2840.82, 3891.45, 3075.26, 2317.64, 3219.08]. Com esses valores, faça um programa que calcule a média de gastos. Dica: use as funções built-in sum() e len().

gasto_empresa = [2172.54, 3701.35, 3518.09, 3456.61, 3249.38, 2840.82, 3891.45, 3075.26, 2317.64, 3219.08]
quantidade = len(gasto_empresa)
valor = sum(gasto_empresa)
print(f' A Média é: {valor/quantidade}')


# 2) Com os mesmos dados da questão anterior, defina quantas compras foram realizadas acima de 3000 reais e calcule a porcentagem quanto ao total de compras.
contador = 0
lista_acima = []
for valor in gasto_empresa:
    if valor > 3000:
        lista_acima.append(valor)
        contador +=1

porcentagem_exercicio_2 = (contador / (len(gasto_empresa))* 100)
print(f'A Quantidade de compras realizadas com o valor maior que 3000 é de: {contador}')
print(f'A porcentagem das compras acima de 3000 é de: {porcentagem_exercicio_2}%')




# 3) Faça um código que colete em uma lista 5 números inteiros quaisquer e imprima a lista. Exemplo: [1,4,7,2,4].
contador3 = 0
lista_3 = []
while contador3 < 5:
    pergunta3 = int(input('Digite um numero qualquer: '))
    lista_3.append(pergunta3)
    contador3 +=1

print(lista_3)


# 4) Colete novamente 5 inteiros e imprima a lista em ordem inversa à enviada.
contador4 = 0
lista_4 = []
while contador4 < 5:
    pergunta4 = int(input('Digite um numero qualquer: '))
    lista_4.append(pergunta4)
    contador4 +=1
lista_4.reverse()    
print(lista_4)




# 5) Faça um programa que, ao inserir um número qualquer, cria uma lista contendo todos os números primos entre 1 e o número digitado.
num1 = 0
lista_5 = []

num1 = int(input('Digite '))





# 6) Escreva um programa que peça uma data informando o dia, mês e ano e determine se ela é válida para uma análise.