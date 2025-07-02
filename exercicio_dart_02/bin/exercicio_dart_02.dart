import 'dart:io';

double calcularPontosRestantes(double total, double retirados) {
  return total - retirados;
}

void main() {
  // 1) Calculando o dobro de um número
  // Faça um programa simples que calcula o dobro de um número inserido no terminal.
  void dobro() {
    int numDobro = int.parse(stdin.readLineSync()!);
    print("O Dobro de $numDobro é: ${numDobro * 2}");
  }

  dobro();

  // 2) Descobrindo a média de idades
  // Escreva um programa que calcula a idade média de três pessoas. O usuário deve ser capaz de inserir as três idades e, ao final, o programa exibe a média dos números.

  void mediaIdade() {
    print("Digite a idade de cada pessoa.");
    print("Pessoa 1:");
    int pessoaUm = int.parse(stdin.readLineSync()!);
    print("Pessoa 2:");
    int pessoaDois = int.parse(stdin.readLineSync()!);
    print("Pessoa 3:");
    int pessoaTres = int.parse(stdin.readLineSync()!);
    double mediaTres = (pessoaUm + pessoaDois + pessoaTres / 3);
    print("A Média de idade das pessoas são: $mediaTres");
  }

  mediaIdade();

  // 3) Escrevendo a ficha de participante
  // Desenvolva um programa que exibe uma pequena “ficha” com informações suas, utilizando os conhecimentos do Dart! As informações da ficha são: Nome; CPF; Idade; Altura; Participo da comunidade?
  // Declare esses dados dentro da variável e depois imprima-os no terminal.

  void ficha() {
    print("Preencha a ficha com todos os seus dados.");
    print("Nome:");
    String? nome = (stdin.readLineSync());
    print("CPF:");
    int cpf = int.parse(stdin.readLineSync()!);
    print("Altura:");
    int altura = int.parse(stdin.readLineSync()!);
    print("Participo da comunidade?");
    String? respostaSOuN = (stdin.readLineSync());

    print(
      "Os dados preenchidos são: Nome:$nome, CPF:$cpf, Altura:$altura, Comunidade?:$respostaSOuN",
    );
  }

  ficha();

  // 4) Calculando o salário do freela
  // Você foi contratado para um trabalho freelance. Crie um programa que lê as horas trabalhadas e calcula o salário líquido, considerando:
  // A empresa paga 50 reais por hora trabalhada;
  // O desconto do salário é de 5% e deve ser subtraído do salário bruto.

  void salarioFreela() {
    print("Quantas horas vc trabalhou?");
    int horas = int.parse(stdin.readLineSync()!);
    double salario = horas * 50;
    double desconto = salario * 5 / 100;
    double calculoSalario = salario - desconto;
    print("Seu salario é de: $calculoSalario");
  }

  salarioFreela();

  // 5) Consertando erros em um programa
  // Você está trabalhando em um programa de banco, que faz três ações:
  // Mostrar o saldo bancário do usuário;
  // Permitir que o usuário faça uma transferência pix (de forma simplificada);
  // Subtrair o valor do pix do valor de saldo.

  void transfPix() {
    double saldo = 1000.0; // Saldo inicial em reais
    print('Boas-vindas ao seu banco digital!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

    print('Digite o valor do Pix que deseja realizar:');
    double valorPix = double.parse(stdin.readLineSync()!);

    saldo -= valorPix;

    print('Pix realizado com sucesso!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
  }

  transfPix();

  // 6) Identificando e corrigindo tipos no Dart
  // Chegou nas suas mãos um programa de retirada de pontos de um clube de benefícios.
  // A lógica deve ser a seguinte:
  // Os pontos iniciais começam no valor 100;
  // O programa inicia com uma mensagem: “*Você tem [x] pontos.*”;
  // Em seguida, exibe a mensagem: “*Quantos pontos você gostaria de resgatar?*”;
  // O usuário digita quantos [y] pontos deseja retirar;
  // O programa faz uma subtração (pontos iniciais [100] - pontos retirados [y]);
  // Por fim, mostra uma mensagem que informa: “Você resgatou [y] pontos. Pontos restantes: [z].””
  // EXERCICIO Nº 6 REFATORADO NO EXERCICIO Nº 7
  // 7) Refatorando o código do clube de benefícios com função
  // Se você resolveu o exercício anterior, agora refatore (modifique) o código, colocando a funcionalidade de subtração de pontos dentro de uma função.

  void retiradaPontos() {
    double pontosIniciais = 100;

    print("Você tem $pontosIniciais pontos.");
    print("Quantos pontos você gostaria de resgatar?");
    double pontosRetirados = double.parse(stdin.readLineSync()!);

    double pontosRestantes = calcularPontosRestantes(
      pontosIniciais,
      pontosRetirados,
    );

    print(
      "Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.",
    );
  }

  retiradaPontos();

  // 8) Implementando um programa de cupons
  // Escreva um programa que informa quantos cupons um cliente ganhou ao fazer compras no mercado No Precinho. A regra da promoção é: a cada 50 reais gastos por compra, a pessoa recebe um cupom. O programa deve:
  // Capturar a entrada com o valor gasto;
  // Exibir mensagem de quantos cupons foram ganhos.

  void precinho() {
    print("Qual o valor gasto em compras no nosso supermercado?");
    double valorGasto = double.parse(stdin.readLineSync()!);
    double regra = valorGasto / 50;
    print("foram ganhos $regra cupons na sua compra");
  }

  precinho();
}
