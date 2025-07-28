import 'package:exercicio_dart_16/exercicio_dart_16.dart';

// 1. Criando classes de gatos e cachorros
// Crie uma classe Animal com um método emitirSom().
//Em seguida, crie duas outras classes: Cachorro e Gato, que herdam o método da classe Animal.
//Ao adicionar o método emitirSom() nas classes Cachorro e Gato, utilize a anotação @override para indicar que estão sobrescrevendo o método — o método emitirSom deve fazer um print “O cachorro late” para Cachorro e “o gato miou” para Gato.
// Além disso, adicione métodos específicos para cada classe, como abanarRabo() para o Cachorro e arranharMoveis() para o Gato.

class Animal {
  emitirSom() {}
}

class Cachorro extends Animal {
  @override
  emitirSom() {
    print('O Cachorro Late!');
  }

  abanarRabo() {}
}

class Gato extends Animal {
  @override
  emitirSom() {
    print('O Gato mia!');
  }

  arranharMoveis() {}
}

// 2. Produzindo uma conta salário com herança
// Continuando o projeto Any Bank, é hora de criar um terceiro tipo de conta: a conta salário.
//Assim como as classes conta corrente e conta poupança, ela possui duas características essenciais: o titular e o saldo.

// Escreva o código da classe ContaSalario e um objeto de conta salário de uma pessoa chamada Catarina (ou qualquer nome que você desejar).
//Se quiser, imprima o saldo da pessoa no terminal.

// Dicas:

// Crie o código da classe ContaSalario e faça a instanciação do objeto contaSalarioCatarina;
// Empregue a técnica de herança para evitar a repetição de código;
// Apenas declare a classe. Não é preciso fazer nada além disso.

// 3. Incrementando a conta salário com polimorfismo
// Agora, vamos melhorar a classe da conta salário.
//Você deve saber que a contaSalario tem duas características em comum com as contas corrente e poupança: titular e saldo.
//No entanto, ela apresenta três características diferentes:

// Variável com o CNPJ da empresa que emprega o(a) titular da conta;
// Variável do nome da empresa;
// Um método (função print) que diz algo como: “O salário da $empresa, de CNPJ X no valor de R$xx.x, foi depositado!”
// Aplique essas três características na classe contaSalario!
// Dica:
// Aplique a técnica de polimorfismo para diferenciar a conta salário das contas corrente e poupança.

void main() {
  Conta contaMatheus = Conta('Matheus', 1000);
  Conta contaRoberta = Conta('Roberta', 2000);
  ContaCorrente contaChris = ContaCorrente('Chris', 4000);
  ContaPoupaca contaDenize = ContaPoupaca('Denize', 4000);
  ContaSalario contaCatarina = ContaSalario(
    'Catarina',
    10000,
    cnpj: '12.345.678/0001-99',
    empresa: 'Tech Solutions Ltda',
    salario: 3500.00,
  );

  List<Conta> contas = <Conta>[
    contaMatheus,
    contaRoberta,
    contaChris,
    contaDenize,
    contaCatarina,
  ];

  for (Conta conta in contas) {
    conta.imprimirSaldo();
  }
  contaMatheus.receber(500);
  contaMatheus.enviar(200);

  contaRoberta.receber(3000);

  contaChris.enviar(4300);
  contaDenize.enviar(50.00);

  contaCatarina.imprimirSaldo();
  contaCatarina.depositoCnpj();
}
