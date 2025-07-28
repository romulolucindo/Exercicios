import 'dart:io';
// 1) Validação de categorias de produtos em um sistema de estoque
// Você está desenvolvendo um sistema de gerenciamento de estoque onde cada produto deve pertencer a uma categoria específica como eletronicos, alimentos, vestuario e livros. Crie uma função que solicite à pessoa usuária que insira a categoria de um novo produto e valide a entrada, garantindo que a categoria existe no sistema.

void main() {
  void categorias() {
    List<String> categoria = [
      "eletronicos",
      "alimentos",
      "vestuario",
      "livros",
    ];

    void executor() {
      print("Categorias válidas $categoria");
      String? produto = stdin.readLineSync();
      if (categoria.contains(produto)) {
        print("Categoria valida!");
      } else {
        print(
          "Categoria Invalida, tente novamente com uma das categorias validas: $categoria",
        );
        executor();
      }
    }

    executor();
  }

  categorias();

  // 2) Validação de tipos de arquivos em um sistema de upload
  // Você está desenvolvendo um sistema de upload de arquivos que aceita apenas tipos específicos como pdf, jpg, png e docx. Crie uma função que solicite à pessoa usuária o tipo de arquivo a ser enviado e valide se a entrada é um tipo de arquivo permitido, solicitando novamente em caso de erro.
  void arquivosAceitos() {
    List<String> listaArquivos = ["pdf", "jpg", "png", "docx"];
    print("Arquivos válidos $listaArquivos");

    void verificadorArquivos() {
      String? upArquivo = stdin.readLineSync();
      if (listaArquivos.contains(upArquivo)) {
        print("Arquivo valido!");
      } else {
        print(
          "Categoria Invalida, tente novamente com um dos tipos de arquivos válidos: $listaArquivos",
        );
        verificadorArquivos();
      }
    }

    verificadorArquivos();
  }

  arquivosAceitos();

  // 3) Dando uma nova chance no retorno de mês
  // Lembra-se da atividade em que criamos um código que retorna um mês de acordo com um número digitado no terminal? Pegue aquele código e adicione a recursão, permitindo que o usuário possa novamente tentar inserir um número, caso digite um valor inválido (diferente dos números de 1 a 12).
  List<String?> listaMes = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
  ];

  String obterMes(String input) {
    switch (input) {
      case "1":
        return 'Janeiro';
      case "2":
        return 'Fevereiro';
      case "3":
        return 'Março';
      case "4":
        return 'Abril';
      case "5":
        return 'Maio';
      case "6":
        return 'Junho';
      case "7":
        return 'Julho';
      case "8":
        return 'Agosto';
      case "9":
        return 'Setembro';
      case "10":
        return 'Outubro';
      case "11":
        return 'Novembro';
      case "12":
        return 'Dezembro';
      default:
        return "Mês Invalido";
    }
  }

  void numeroEntrada() {
    print('Digite um número de 1 a 12 para saber o mês correspondente:');
    String? input = stdin.readLineSync();

    if (input != null && listaMes.contains(input)) {
      String mes = obterMes(input);
      print(mes);
    } else {
      print("Valor INVÁLIDO");
      numeroEntrada();
    }
  }

  numeroEntrada();

  // 4) Criando a função de depósito e fazendo sua validação
  // Vamos continuar desenvolvendo o programa de banco.
  // Agora, concentre-se na operação de depósito e escreva uma função em que o usuário, após digitar um valor numérico, o insere na conta. Lembre-se de validar se a entrada é um número positivo. Caso contrário, solicite novamente até que um valor válido seja fornecido. A ideia é que o programa rode mais ou menos assim no terminal:
  double saldoDeposito = 0;

  List<String> listaDeOperacoes = [
    "deposito",
    // "retirada",
    // "transferencia",
    // "pagamento",
  ];

  print("Bem - Vindo(a) ao banco DART!, oque vc deseja hoje?:");
  void escolhaOperacao() {
    print("OPÇÕES VÁLIDAS: $listaDeOperacoes");
    String? operacaoEscolhida = stdin.readLineSync();
    if (listaDeOperacoes.contains(operacaoEscolhida)) {
      print("Digite o valor que deseja realizar o deposito.");
      double valorDeposito = double.parse(stdin.readLineSync()!);
      if (valorDeposito <= 0) {
        print("Digite apenas valores positivos > 0");
      } else {
        saldoDeposito += valorDeposito;
        print("Seu saldo é de: $saldoDeposito");
      }
    } else {
      print("Escolha uma opção válida pf!");
      escolhaOperacao();
    }
  }

  escolhaOperacao();

  // 5) Validação de métodos de pagamento em uma plataforma de e-commerce
  // Você está desenvolvendo uma plataforma de e-commerce onde a pessoa usuária pode escolher entre diferentes métodos de pagamento como cartao, boleto, paypal e pix. Crie uma função que solicite à pessoa usuária o método de pagamento desejado e valide se a entrada é válida, solicitando novamente em caso de erro.

  List<String> listaDeMetodosDePagamento = [
    "cartao",
    "boleto",
    "paypal",
    "pix",
  ];

  print("Escolha um metodo de pagamento VÁLIDO pf: $listaDeMetodosDePagamento");
  void metodoDePagamento() {
    String? clienteEscolhe = stdin.readLineSync();
    if (listaDeMetodosDePagamento.contains(clienteEscolhe)) {
      print("Pagamento Realizado com SUCESSO!");
    } else {
      print("Escolha uma das opções Válidas: $listaDeMetodosDePagamento");
      metodoDePagamento();
    }
  }

  metodoDePagamento();
}
