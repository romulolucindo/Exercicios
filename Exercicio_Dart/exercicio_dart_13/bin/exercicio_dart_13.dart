void main() {
  print(item2);
}

class Receita {
  String nome;
  double preco;

  Receita(this.nome, this.preco);
  @override
  String toString() {
    return 'Receita: $nome - Preço: R\$${preco.toStringAsFixed(2)}';
  }
}

List<Receita> receitas = <Receita>[item1, item2, item3];

Receita item1 = Receita('Macarrão ao pesto', 20.00);
Receita item2 = Receita('Lasanha 4 queijos', 32.00);
Receita item3 = Receita('Burrata com pesto', 28.00);
