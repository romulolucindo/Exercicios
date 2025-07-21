// Em um sistema de vendas, a loja precisa calcular o valor total dos produtos. Crie uma função que receba um mapa de produtos e calcule o valor total dos produtos.
import 'dart:io';

Map<String, double> inventarioProdutos = {
  "Camiseta": 30.0,
  "Calça": 50.0,
  "Boné": 15.0,
};

void main() {
  exibirValorTotal();
  exibirProdutos2();
  exibirInventario();
}

void exibirValorTotal() {
  Map<String, double> precosProdutos = {
    "Camiseta": 30.0,
    "Calça": 50.0,
    "Boné": 15.0,
    "Tênis": 120.0,
  };
  double totalProduto = 0;

  for (double precoProduto in precosProdutos.values) {
    totalProduto += precoProduto;
  }
  print('O total da compra é: $totalProduto');
}

// Você tem um mapa com o nome dos produtos e a quantidade em estoque de cada um. A loja quer saber quantos itens no total ainda tem no estoque (somando as quantidades de todos os produtos).
void exibirProdutos2() {
  Map<String, int> estoque = {
    "Camiseta": 10,
    "Calça": 5,
    "Boné": 12,
    "Tênis": 4,
  };
  int estoqueTotal = 0;
  for (int itens in estoque.values) {
    estoqueTotal += itens;
  }
  print('O estoque total é: $estoqueTotal itens');
}

// Em um sistema de inventário, é necessário realizar ajustes de preço de determinados produtos.
//Crie uma função que receba um mapa de produtos, um nome de produto e um novo preço, atualizando o valor e exibindo o inventário atualizado.

void exibirInventario() {
  double novoPreco = 0;

  print('Bem-vindo ao estoque de nossa rede, esse é o nosso estoque atual:');
  print(inventarioProdutos);

  print('Digite qual o produto que vc quer alterar o preço:');
  String entradaProduto = stdin.readLineSync()!;

  if (!inventarioProdutos.containsKey(entradaProduto)) {
    print('Produto não cadastrado em nosso estoque!');
    exibirInventario();
    return;
  }
  print('Digite o novo valor:');
  novoPreco = double.parse(stdin.readLineSync()!);

  atualizarInventario(inventarioProdutos, entradaProduto, novoPreco);
}

void atualizarInventario(
  Map<String, double> inventario,
  String nomeProduto,
  double novoPreco,
) {
  if (!inventario.containsKey(nomeProduto)) {
    print('Produto não cadastrado em nosso estoque!');
    return;
  }

  inventario.update(nomeProduto, (value) => novoPreco);
  print('Inventário atualizado:');
  print(inventario);
}
