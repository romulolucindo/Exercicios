# # 1) Faça um programa que tenha a seguinte lista contendo os valores de gastos de uma empresa de papel [2172.54, 3701.35, 3518.09, 3456.61, 3249.38, 2840.82, 3891.45, 3075.26, 2317.64, 3219.08]. Com esses valores, faça um programa que calcule a média de gastos. Dica: use as funções built-in sum() e len().

# gasto_empresa = [2172.54, 3701.35, 3518.09, 3456.61, 3249.38, 2840.82, 3891.45, 3075.26, 2317.64, 3219.08]
# quantidade = len(gasto_empresa)
# valor = sum(gasto_empresa)
# print(f' A Média é: {valor/quantidade}')


# # 2) Com os mesmos dados da questão anterior, defina quantas compras foram realizadas acima de 3000 reais e calcule a porcentagem quanto ao total de compras.
# contador = 0
# lista_acima = []
# for valor in gasto_empresa:
#     if valor > 3000:
#         lista_acima.append(valor)
#         contador +=1

# porcentagem_exercicio_2 = (contador / (len(gasto_empresa))* 100)
# print(f'A Quantidade de compras realizadas com o valor maior que 3000 é de: {contador}')
# print(f'A porcentagem das compras acima de 3000 é de: {porcentagem_exercicio_2}%')




# # 3) Faça um código que colete em uma lista 5 números inteiros quaisquer e imprima a lista. Exemplo: [1,4,7,2,4].
# contador3 = 0
# lista_3 = []
# while contador3 < 5:
#     pergunta3 = int(input('Digite um numero qualquer: '))
#     lista_3.append(pergunta3)
#     contador3 +=1

# print(lista_3)


# # 4) Colete novamente 5 inteiros e imprima a lista em ordem inversa à enviada.
# contador4 = 0
# lista_4 = []
# while contador4 < 5:
#     pergunta4 = int(input('Digite um numero qualquer: '))
#     lista_4.append(pergunta4)
#     contador4 +=1
# lista_4.reverse()    
# print(lista_4)




# # 5) Faça um programa que, ao inserir um número qualquer, cria uma lista contendo todos os números primos entre 1 e o número digitado.
# lista_5 = []

# num1 = int(input('Digite um numero: '))

# for n in range(2, num1 + 1):
#     eh_primo = True
#     for primo in range(2, n):
#         if n % primo == 0:
#             eh_primo = False
#             break
#     if eh_primo:
#         lista_5.append(n)

# print(lista_5)



# # 6) Escreva um programa que peça uma data informando o dia, mês e ano e determine se ela é válida para uma análise.
# dia = int(input('Digite um dia em numero: '))
# mes = int(input('Digite um mês em numero: '))
# ano = int(input('Digite um ano em numero: '))

# meses_31 = [1, 3, 5, 7, 8, 10, 12]
# meses_30 = [4, 6, 9, 11]

# if mes < 1 and mes > 12:
#     print('Mês inválido')

# else:    
#     if mes in meses_31:
#         limite = 31
#     elif mes in meses_30:
#         limite = 30
#     else:
#         # Fevereiro
#         if (ano % 4 == 0 and ano % 100 != 0) or (ano % 400 == 0):
#             limite = 29
#         else:
#             limite = 28
    
#     if dia < 1 or dia > limite:
#         print("Data Inválida")
#     else:
#         print(f'Data valida: {dia}/{mes}/{ano}')


# # 7) Para um estudo envolvendo o nível de multiplicação de bactérias em uma colônia, foi coletado o número de bactérias por dia (em milhares) e pode ser observado a seguir: [1.2, 2.1, 3.3, 5.0, 7.8, 11.3, 16.6, 25.1, 37.8, 56.9]. Tendo esses valores, faça um código que gere uma lista contendo o percentual de crescimento de bactérias por dia, comparando o número de bactérias em cada dia com o número de bactérias do dia anterior. Dica: para calcular o percentual de crescimento usamos a seguinte equação: 100 * (amostra_atual - amostra_passada) / (amostra_passada).


# crescimento = [1.2, 2.1, 3.3, 5.0, 7.8, 11.3, 16.6, 25.1, 37.8, 56.9]

# porcentagem_crescimento = []

# for i in range(1, len(crescimento)):
#     anterior = crescimento[i - 1]
#     atual = crescimento[i]
#     porcentagem = 100 * (atual - anterior) / anterior
#     porcentagem_crescimento.append(round(porcentagem, 2))

# print(f'Porcentagem de crescimento de cada dia: {porcentagem_crescimento}')

# # 8) Para uma seleção de produtos alimentícios, precisamos separar o conjunto de IDs dados por números inteiros sabendo que os produtos com ID par são doces e os com ID ímpar são amargos. Monte um código que colete 10 IDs. Depois, calcule e mostre a quantidade de produtos doces e amargos.
# produtos = []
# doces = []
# amargos = []
# contador5 = 1

# while contador5 <= 10:
#     id_produto = int(input('Digite um numero: '))
#     produtos.append(id_produto)

#     if id_produto % 2 == 0:
#         doces.append(id_produto)

#     elif id_produto % 2 == 1:
#         amargos.append(id_produto)
    
#     else:
#         print('Valor inválido')

#     contador5 += 1

# print('Doces', len(doces))
# print('Amaargo ', len(amargos))

# 9) Desenvolva um programa que informa a nota de um(a) aluno(a) de acordo com suas respostas. Ele deve pedir a resposta desse(a) aluno(a) para cada questão e é preciso verificar se a resposta foi igual ao gabarito. Cada questão vale um ponto e existem as alternativas A, B, C ou D.

# gabarito = {1: 'D', 2: 'A', 3: 'C', 4: 'B', 5: 'A', 6: 'D', 7: 'C', 8: 'C', 9: 'A', 10: 'B'}
# pontos = 0


# for questao in range(1, 11):
#     resposta = input(f'Qual a resposta da questão {questao}? (A/B/C/D): ').upper()

#     if resposta == gabarito[questao]:
#         pontos +=1
    
# print('Nota final', pontos)


# 10) Um instituto de meteorologia deseja fazer um estudo de temperatura média de cada mês do ano. Para isso, você precisa fazer um código que colete e armazene essas temperaturas médias em uma lista. Depois, calcule a média anual das temperaturas e mostre todas as temperaturas acima da média anual e em que mês elas ocorreram, mostrando os meses por extenso (Janeiro, Fevereiro, etc.).

lista_meses = ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro']


for n in lista_meses.range(1, 13):
    temperatura = input(f'Qual a temperatura do mês de {lista_meses}')