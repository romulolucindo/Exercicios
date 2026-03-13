# 1) Escreva um programa que peça dois números inteiros e imprima todos os números inteiros entre eles.
valor1 = int(input('Escreva um numero: '))
valor2 = int(input('Escreva outro numero: '))

if valor1 > valor2:
    for contador in range(valor2 +1, valor1):
        print(contador)

else:
    for contador in range(valor1 +1, valor2):
        print(contador)
    

# 2) Escreva um programa para calcular quantos dias levará para a colônia de uma bactéria A ultrapassar ou igualar a colônia de uma bactéria B, com base nas taxas de crescimento de 3% e 1,5% respectivamente. Considere que a colônia A inicia com 4 elementos e a B com 10.

contador = 0
taxa1 = 0.03
taxa2 = 0.015
colonia1 = 4
colonia2 = 15

while colonia1 < colonia2:
    colonia1 = colonia1 * (1 + taxa1)
    colonia2 = colonia2 * (1 + taxa2)
    contador += 1

print('Dias nescessarios: ',contador)

# 3) Para tratar uma quantidade de 15 dados de avaliações de pessoas usuárias de um serviço da empresa, precisamos verificar se as notas são válidas. Então, escreva um programa que vai receber a nota de 0 a 5 de todos os dados e verificar se é um valor válido. Caso seja inserido uma nota acima de 5 ou abaixo de 0, repita até que a pessoa usuária insira um valor válido.

contador_avaliação = 0

while contador_avaliação < 2:
    nota = int(input('Dê uma nota de avaliação de 0 a 5: '))
    if nota > 5:
        print('Valor Inválido, tente novamente!')
        continue
    elif nota < 0:
        print('Valor Inválido, tente novamente!')
        continue
    else:
        print('Obrigado pela sua avaliação!')
        contador_avaliação +=1



# 4) Desenvolva um programa que leia um conjunto indeterminado de temperaturas em Celsius e informe a média delas. A leitura deve ser encerrada ao ser enviado o valor -273°C.
perguntas = 0
temperatura = 0
temp = 0

while temp != -273:
    temp = int(input('Digite um valor da temperatura: '))
    if temp == -273:
        break
    else:
        temperatura += temp
        perguntas +=1
print(f'A Média de todas as temperaturas são: {temperatura / perguntas}')


# 5) Escreva um programa que calcule o fatorial de um número inteiro fornecido pela pessoa usuária. Lembrando que o fatorial de um número inteiro é a multiplicação desse número por todos os seus antecessores até o número 1. Por exemplo, o fatorial de 5 é 5 x 4 x 3 x 2 x 1 = 120.

n = int(input('Digite um numero e vamos ver o fatorial dele: '))
resultado = 1

while n > 1:
    print(f'{n} x {resultado}')
    resultado = n * resultado
    n -=1
print(resultado)


# Momento dos projetos
# 6) Escreva um programa que gere a tabuada de um número inteiro de 1 a 10, de acordo com a escolha da pessoa usuária. Como exemplo, para o número 2, a tabuada deve ser mostrada no seguinte formato:

tabuada = int(input('Digite o numero que vc deseja ver a tabuada: '))
multiplicador = 1


while multiplicador <= 10:
    produto = tabuada * multiplicador
    print(f'{tabuada} x {multiplicador} = {produto}')
    multiplicador +=1



# 7) Os números primos possuem várias aplicações dentro da Ciência de Dados em criptografia e segurança, por exemplo. Um número primo é aquele que é divisível apenas por um e por ele mesmo. Assim, faça um programa que peça um número inteiro e determine se ele é ou não um número primo.

numero_primo = int(input('Digite um numero e vamos lhe dizer se é um numero primo ou não: '))
primo = True

for divisor in range(2, numero_primo):
    if numero_primo % divisor == 0:
        primo = False
        break
    
if primo and numero_primo > 1:
    print('É Primo')
else:
    print('Não é primo')

# 8) Vamos entender a distribuição de idades de pensionistas de uma empresa de previdência. Escreva um programa que leia as idades de uma quantidade não informada de clientes e mostre a distribuição em intervalos de [0-25], [26-50], [51-75] e [76-100]. Encerre a entrada de dados com um número negativo.
box1 = 0
box2 = 0
box3 = 0
box4 = 0
idade = 0
while idade >= 0:
    pergunta_idade = int(input('Qual a sua idade?'))
    if pergunta_idade >= 0 and pergunta_idade <= 25:
        box1 +=1
    elif pergunta_idade >= 26 and pergunta_idade <= 50:
        box2 +=1
    elif pergunta_idade >= 51 and pergunta_idade <= 75:
        box3 +=1
    elif pergunta_idade >= 76:
        box4 +=1
    else:
        print('Valor Inválido')
        break
print(f'As faixas de idades: ')
print('[0-25] ', box1)
print('[26-50] ', box2)
print('[51-75] ', box3)
print('[76-100+] ', box4)

# 9) Em uma eleição para gerência em uma empresa com 20 pessoas colaboradoras, existem quatro candidatos(as). Escreva um programa que calcule o(a) vencedor(a) da eleição. A votação ocorreu da seguinte maneira:

# Cada colaborador(a) votou em uma das quatro pessoas candidatas (que representamos pelos números 1, 2, 3 e 4).

# Também foram contabilizados os votos nulos (representados pelo número 5) e os votos em branco (representados pelo número 6).

# Ao final da votação, o programa deve exibir o número total de votos para cada candidato(a), os nulos e os votos em branco. Além disso, deve calcular e exibir a porcentagem de votos nulos em relação ao total de votos e a porcentagem de votos em branco em relação ao total de votos.

candidato1 = 0
candidato2 = 0
candidato3 = 0
candidato4 = 0
nulo = 0
branco = 0
pessoas = 0

while pessoas < 20:
    voto = int(input('Vote no candidato 1, 2, 3 ou 4'))

    if voto == 1:
        candidato1 +=1
        pessoas +=1
    elif voto == 2:
        candidato2 +=1
        pessoas +=1
    elif voto == 3:
        candidato3 +=1
        pessoas +=1
    elif voto == 4:
        candidato4 +=1
        pessoas +=1
    elif voto == 5:
        nulo +=1
        pessoas +=1
    elif voto == 6:
        branco +=1
        pessoas +=1
    else:
        print('Valor Inválido, tente novamente!')
        

porcetagem_nulos = ((nulo * 100) / 20)
porcetagem_brancos = ((branco * 100) / 20)

print('Resultado da eleição: ')
print(f'Candidato 1 com {candidato1} Votos')
print(f'Candidato 2 com {candidato2} Votos')
print(f'Candidato 3 com {candidato3} Votos')
print(f'Candidato 4 com {candidato4} Votos')
print(f'Votos Nulos com {nulo} Votos')
print(f'Votos em Branco {branco} Votos')
print(f'Porcentagem de votos nulos em relação ao total de votos {porcetagem_nulos}%')
print(f'Porcentagem de votos brancos em relação ao total de votos {porcetagem_brancos}%')





    