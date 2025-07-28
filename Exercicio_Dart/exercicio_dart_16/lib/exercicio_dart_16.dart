class Conta {
  String titular;
  double _saldo;
  Conta(this.titular, this._saldo);

  void receber(double valor) {
    _saldo += valor;
    imprimirSaldo();
  }

  void enviar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      imprimirSaldo();
    } else {
      print('Saldo de $titular insuficiente para concluir a transferencia.');
    }
  }

  void imprimirSaldo() {
    print('O saldo atual de $titular é: R\$$_saldo');
  }
}

class ContaCorrente extends Conta {
  double emprestimo = 300;
  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      imprimirSaldo();
    }
  }
}

class ContaPoupaca extends Conta {
  ContaPoupaca(super.titular, super._saldo);
  double rendimento = 0.05;
  void calculaRendimento() {
    _saldo = _saldo + (_saldo * 0.05);
  }
}

class ContaSalario extends Conta {
  String cnpj;
  String empresa;
  double salario;
  ContaSalario(
    super.titular,
    super._saldo, {
    required this.cnpj,
    required this.empresa,
    required this.salario,
  });

  void depositoCnpj() {
    print(
      'O salário da $empresa, de CNPJ $cnpj no valor de R\$$salario, foi depositado!',
    );
  }
}
