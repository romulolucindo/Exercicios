# Momento dos projetos
## 1) Um programa deve ser escrito para ler dois números e, em seguida, perguntar à pessoa usuária qual operação ele deseja realizar. O resultado da operação deve incluir informações sobre o número - se é par ou ímpar, positivo ou negativo e inteiro ou decimal.
numero1 = float(input('Digite um numero!: '))
numero2 = float(input('Digite outro numero!: '))
operacao = input('Qual operação vc deseja realizar? (+, -, * ou /) : ')

if operacao == '+':
    resultado = numero1 + numero2
    print(f'A Soma dos números são: {resultado}')
elif operacao == '-':
    resultado = numero1 - numero2
    print(f'A Subitração dos números são: {resultado}')
elif operacao == '*':
    resultado = numero1 * numero2
    print(f'A Multiplicação dos números são: {resultado}')
elif operacao == '/':
    if numero2 == 0:
        print('Não da pra dividir o numero por 0')
        exit()
    else:
        resultado = numero1 / numero2
        print(f'A Divisão dos números são: {resultado}')
else:
    print('Operação Inválida')
    exit()


if resultado == int(resultado):
        print('É Inteiro!')
        if resultado % 2 == 0:
            print('É Par!')
        else: 
            print('É Ímpar!')
else:
        print('É Decimal e não tem par ou ímpar')
    
if resultado > 0:
        print('É Positivo!')
elif resultado < 0:
        print('É Negativo')
else:
        print('É 0')






## 2) Escreva um programa que peça à pessoa usuária três números que representam os lados de um triângulo. O programa #deve informar se os valores podem ser utilizados para formar um triângulo e, caso afirmativo, se ele é equilátero, #isósceles ou escaleno. Tenha em mente algumas dicas:
# Três lados formam um triângulo quando a soma de quaisquer dois lados for maior que o terceiro;
# Triângulo Equilátero: três lados iguais;
# Triângulo Isósceles: quaisquer dois lados iguais;
# Triângulo Escaleno: três lados diferentes.

lado1 = int(input('Digite o lado 1: '))
lado2 = int(input('Digite o lado 2: '))
lado3 = int(input('Digite o lado 3: '))

if lado1 + lado2 > lado3 and lado1 + lado3 > lado2 and lado2 + lado3 > lado1:
    if lado1 == lado2 == lado3:
         print('Triangulo Equilatero')
    elif lado1 == lado2 or lado1 == lado3 or lado2 == lado3:
         print('Triangulo Isoceles')
    else:
         print('Triangulo Escaleno')
else:
     print('Não da pra formar um triangulo com os valores passados.')



## 3) Um estabelecimento está vendendo combustíveis com descontos variados. Para o etanol, se a quantidade comprada for até 15 litros, o desconto será de 2% por litro. Caso contrário, será de 4% por litro. Para o diesel, se a quantidade comprada for até 15 litros, o desconto será de 3% por litro. Caso contrário, será de 5% por litro. O preço do litro de diesel é R$ 2,00 e o preço do litro de etanol é R$ 1,70. Escreva um programa que leia a quantidade de litros vendidos e o tipo de combustível (E para etanol e D para diesel) e calcule o valor a ser pago pelo cliente. Tenha em mente algumas dicas:

# O do valor do desconto será a multiplicação entre preço do litro, quantidade de litros e o valor do desconto.
# O valor a ser pago por um cliente será o resultado da multiplicação do preço do litro pela quantidade de litros menos o valor de desconto resultante do cálculo.
preco_litro_etanol = 1.70
preco_litro_diesel = 2.00
tipo_combustivel = int(input('Qual o tipo de combustivel vc quer comprar? 1 - Etanol ou 2 - Diesel: '))
qtd_litros = int(input('Digite a quantidade de litros de combustivel vc vai querer?: '))


if tipo_combustivel == 1 and qtd_litros <= 15:
    valor_bruto = qtd_litros * preco_litro_etanol
    valor_desconto = valor_bruto * 0.02
    valor_final = valor_bruto - valor_desconto
    print(f'O valor a pagar é de {valor_final}')
elif tipo_combustivel == 1 and qtd_litros > 15:
    valor_bruto = qtd_litros * preco_litro_etanol
    valor_desconto = valor_bruto * 0.04
    valor_final = valor_bruto - valor_desconto
    print(f'O valor a pagar é de {valor_final}')
elif tipo_combustivel == 2 and qtd_litros <= 15:
    valor_bruto = qtd_litros * preco_litro_diesel
    valor_desconto = valor_bruto * 0.03
    valor_final = valor_bruto - valor_desconto
    print(f'O valor a pagar é de {valor_final}')
elif tipo_combustivel == 2 and qtd_litros > 15:
    valor_bruto = qtd_litros * preco_litro_diesel
    valor_desconto = valor_bruto * 0.05
    valor_final = valor_bruto - valor_desconto
    print(f'O valor a pagar é de {valor_final}')
else:
     print('Tipo Inválido')
     exit()
     
     




## 4) Em uma empresa de venda de imóveis você precisa criar um código que analise os dados de vendas anuais para ajudar a diretoria na tomada de decisão. O código precisa coletar os dados de quantidade de venda durante os anos de 2022 e 2023 e fazer um cálculo de variação percentual. A partir do valor da variação, deve ser enviada às seguintes sugestões:

# Para variação acima de 20%: bonificação para o time de vendas.
# Para variação entre 2% e 20%: pequena bonificação para time de vendas.
# Para variação entre 2% e -10%: planejamento de políticas de incentivo às vendas.
# Para variação abaixo de -10%: corte de gastos.