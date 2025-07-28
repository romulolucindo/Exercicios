void main() {
  exibirEstoque();
  celular.saidaEstoque();
  notebook.entradaEstoque();
  teclado.entradaEstoque();
  monitor.entradaEstoque();
  celular.atualizarPreco(1000.00);
}
// 1. Criando uma classe para itens de estoque
// Você trabalha no time de desenvolvimento de um sistema de gestão de estoque para uma loja de eletrônicos.
//Sua tarefa é criar uma classe chamada ItemEstoque que deverá armazenar informações sobre o nome do produto e a quantidade em estoque.
//Em seguida, você deve instanciar dois itens: um para "Smartphone", com 100 unidades em estoque, e outro para "Notebook", com 50 unidades.
//Por fim, você deve imprimir as informações desses itens no terminal.

// 2. Implementando operações de entrada e saída de estoque
// Agora que criou a classe ItemEstoque, você precisa adicionar funcionalidades para registrar entradas e saídas de produtos no estoque.
//Implemente métodos dentro da classe ItemEstoque para realizar essas operações.
//Teste esses métodos registrando uma entrada de 20 unidades para o "Smartphone" e uma saída de 10 unidades do "Notebook".
//Por último, imprima as novas quantidades em estoque no terminal.

// 3. Gerenciando múltiplos itens de estoque
// Você percebeu que a loja possui muitos produtos.
//Sua tarefa agora é fazer uma lista que armazena várias instâncias da classe ItemEstoque.
//Em seguida, implemente um laço de repetição que percorra essa lista e imprima as informações de cada item em estoque.
//Para testar, crie pelo menos três itens com diferentes produtos e quantidades, adicione-os à lista e exiba os detalhes de todos os itens cadastrados.

// 4. Atualizando o preço dos itens
// Agora que você já tem um controle de estoque, vamos acrescentar mais uma funcionalidade ao sistema: o controle de preços dos produtos.
//Sua tarefa é adicionar um novo atributo preco à classe ItemEstoque.
//Em seguida, implemente um método que permita alterar o preço de um item específico.
//Crie três itens, defina seus preços iniciais e depois altere o preço de um deles.
//Por fim, imprima o nome do produto, sua quantidade em estoque e o preço atualizado.

ItemEstoque celular = ItemEstoque('Smartphone', 100, 2999.90);
ItemEstoque notebook = ItemEstoque('Notebook', 50, 4999.00);
ItemEstoque teclado = ItemEstoque('Teclado', 200, 159.90);
ItemEstoque mouse = ItemEstoque('Mouse', 250, 99.99);
ItemEstoque monitor = ItemEstoque('Monitor', 75, 899.00);
List<ItemEstoque> estoqueGeral = [celular, notebook, teclado, mouse, monitor];

class ItemEstoque {
  String? nomeProduto;
  int qtdEstoque;
  double preco;
  ItemEstoque(this.nomeProduto, this.qtdEstoque, this.preco);

  void saidaEstoque() {
    print('Saida de 10 unidades de $nomeProduto');
    qtdEstoque -= 10;
    print(
      'Produto: $nomeProduto | Quantidade em estoque: $qtdEstoque | Preço da UN: R\$ ${preco.toStringAsFixed(2)}',
    );
  }

  void atualizarPreco(double novoPreco) {
    preco = novoPreco;
    print(
      'Preço do produto: $nomeProduto alterado para: R\$ ${novoPreco.toStringAsFixed(2)}',
    );
  }

  void entradaEstoque() {
    print('Chegou mais 20 $nomeProduto');
    qtdEstoque += 20;
    print(
      'Produto: $nomeProduto | Quantidade em estoque: $qtdEstoque | Preço da UN: R\$ ${preco.toStringAsFixed(2)}',
    );
  }

  @override
  String toString() {
    return 'Produto: $nomeProduto | Quantidade em estoque: $qtdEstoque | Preço da UN: R\$ ${preco.toStringAsFixed(2)}';
  }
}

void exibirEstoque() {
  for (var item in estoqueGeral) {
    print(item);
  }
}
