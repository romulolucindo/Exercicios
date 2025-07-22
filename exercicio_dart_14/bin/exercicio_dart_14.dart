void main() {
  print(celular.nomeProduto);
  print(celular.qtdEstoque);
  print(celular.saidaEstoque());
  print(notebook.nomeProduto);
  print(notebook.qtdEstoque);
  print(notebook.entradaEstoque());
}
// 1. Criando uma classe para itens de estoque
// Você trabalha no time de desenvolvimento de um sistema de gestão de estoque para uma loja de eletrônicos. Sua tarefa é criar uma classe chamada ItemEstoque que deverá armazenar informações sobre o nome do produto e a quantidade em estoque. Em seguida, você deve instanciar dois itens: um para "Smartphone", com 100 unidades em estoque, e outro para "Notebook", com 50 unidades. Por fim, você deve imprimir as informações desses itens no terminal.

// 2. Implementando operações de entrada e saída de estoque
// Agora que criou a classe ItemEstoque, você precisa adicionar funcionalidades para registrar entradas e saídas de produtos no estoque. Implemente métodos dentro da classe ItemEstoque para realizar essas operações. Teste esses métodos registrando uma entrada de 20 unidades para o "Smartphone" e uma saída de 10 unidades do "Notebook". Por último, imprima as novas quantidades em estoque no terminal.

ItemEstoque celular = ItemEstoque('smartphone', 100);
ItemEstoque notebook = ItemEstoque('Notebook', 50);

class ItemEstoque {
  String? nomeProduto;
  int qtdEstoque;
  ItemEstoque(this.nomeProduto, this.qtdEstoque);

  int saidaEstoque() {
    print('Saida de 10 unidades de $nomeProduto');
    qtdEstoque -= 10;
    return qtdEstoque;
  }

  int entradaEstoque() {
    print('Chegou mais $nomeProduto');
    qtdEstoque += 20;
    return qtdEstoque;
  }
}
