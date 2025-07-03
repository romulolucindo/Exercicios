import 'dart:io';

void main() {
  // 1) Calculando idade para carteira de motorista
  // Escreva um programa em Dart que verifica se uma pessoa pode ou não dirigir um veículo com base na sua idade. O programa deve solicitar ao usuário que digite sua idade e então informar, com uma mensagem, se ele pode dirigir ou não. Implemente o código para fazer essa verificação.
  void calculandoIdade() {
    print("Digite a sua idade para sabermos se vc pode dirigir:");
    double idade = double.parse(stdin.readLineSync()!);

    switch (idade) {
      case >= 18:
        print(" ^.^ Vc pode dirigir!");

      case <= 18:
        print(" ò.ó  Vc é menor de idade, NÃO PODE DIRIGIR!!");
    }
  }

  calculandoIdade();
  // 2) Retornando os meses do ano
  // Desenvolva um programa em Dart que solicita ao usuário que digite um número de 1 a 12 e retorna o mês correspondente do ano. Por exemplo, ao digitar 2, o programa retorna a mensagem “Fevereiro”.
  void calendario() {
    print("Bem - Vindo(a) ao calendario do DART!");
    print("Digite um numero de 1 a 12");
    double mes = double.parse(stdin.readLineSync()!);

    switch (mes) {
      case 1:
        print("Janeiro");

      case 2:
        print("Fevereiro");

      case 3:
        print("Marco");

      case 4:
        print("Abril");

      case 5:
        print("Maio");

      case 6:
        print("Junho");

      case 7:
        print("Julho");

      case 8:
        print("Agosto");

      case 9:
        print("Setembro");

      case 10:
        print("Outubro");

      case 11:
        print("Novembro");

      case 12:
        print("Dezembro");
        break;
    }
  }

  calendario();

  //   3) Implementando a verificação de saldo
  // Você recebeu o seguinte trecho de código que, entre outras coisas, faz uma transferência Pix:
  // A sua missão é criar uma estrutura condicional que limite as transferências, seguindo a lógica a seguir:
  // Se houver saldo suficiente (o valor do Pix é igual ou menor ao saldo bancário): a operação é executada e o valor transferido é debitado do saldo;
  // Se houver saldo insuficiente (o valor do pix é maior que o saldo): o programa exibe uma mensagem “Saldo insuficiente”.
  double saldo = 1000.0; // Saldo inicial em reais

  void verificaPix(double valorPix) {
    if (valorPix <= saldo) {
      saldo -= valorPix;
      print("PIX realizado com sucesso!");
      print("Sou novo saldo é: $saldo");
    } else {
      print("Saldo Insuficiente, R\$${saldo.toStringAsFixed(2)}");
    }
  }

  void verificaSaldo() {
    print('Boas-vindas ao seu banco digital!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

    print('Digite o valor do Pix que deseja realizar:');
    double valorPix = double.parse(stdin.readLineSync()!);
    verificaPix(valorPix);
  }

  verificaSaldo();

  // 4) Verificando a maioridade em diferentes países
  // Escreva um programa que verifica a maioridade para dirigir em diferentes países. O programa deve solicitar ao usuário que insira sua idade e o país em que ele se encontra (por exemplo, Brasil, EUA, Japão) e informar se ele pode dirigir ou não, com base na legislação de cada país.
  // Utilize as idades mínimas de 18 anos para o Brasil, 16 anos para os EUA e 20 anos para o Japão.
  void verifCountryDrivers() {
    print(
      "Bem - Vindo(a) ao VerifCountryDrivers, seu verificardo de idades para dirigir em outros países.",
    );
    print("Primeiro, Digite qual a sua idade?");
    double idadeDriver = double.parse(stdin.readLineSync()!);
    print("Agora qual pais vc mora, pretende morar ou passear?");
    String? countryName = (stdin.readLineSync());

    if (idadeDriver >= 16 && countryName!.toLowerCase() == "usa") {
      print("Você pode dirigir no USA com 16 anos");
    } else if (idadeDriver >= 18 && countryName!.toLowerCase() == "brasil") {
      print("Você pode dirigir no Brasil com 18 anos");
    } else if (idadeDriver >= 20 && countryName!.toLowerCase() == "japao") {
      print("Você pode dirigir no Japão com 20 anos");
    } else {
      print(
        "Você não pode dirigir no país informado ou o país não está na lista.",
      );
    }
  }

  verifCountryDrivers();
}
