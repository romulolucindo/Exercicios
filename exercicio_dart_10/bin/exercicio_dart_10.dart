// Uma loja tem dois sets de promoções. Um contém os identificadores (ID) dos produtos da promoção da semana, enquanto o outro contém os identificadores dos produtos da promoção de fim de mês.
// Crie uma função que receba os dois sets e exiba todos os IDs que estão em qualquer uma das promoções.
import 'dart:io';

void main() {
  exibirProdutos();
  exibirVendas();
}

void exibirProdutos() {
  Set<int> produtosSemana = {1, 2, 3, 4};
  Set<int> produtosMes = {3, 4, 5, 6};
  final todosIds = produtosSemana.union(produtosMes);
  print(
    'Para obter os IDs ===>\nDigite 1 para Semana\n2 para Mes\n3 para todos IDs',
  );
  String? entrada = stdin.readLineSync();
  if (entrada == '1') {
    print('Esses são os IDs da semana: $produtosSemana');
  } else if (entrada == '2') {
    print('Esses são os IDs do Mes: $produtosMes');
  } else if (entrada == '3') {
    print('Esses são todos os IDs: $todosIds');
  } else {
    print('Digite somente uma das opções válidas');
    exibirProdutos();
  }
}

// Em uma análise de vendas, dois conjuntos de produtos estão sendo comparados: um conjunto de produtos vendidos e outro de produtos que estavam em estoque.
// Crie uma função que receba esses conjuntos e exiba os produtos em estoque que ainda não foram vendidos.

void exibirVendas() {
  Set<String> produtosVendidos = {"maçã", "banana", "laranja"};
  Set<String> produtosEstoque = {"banana", "kiwi", "laranja"};
  final estoqueRestante = produtosEstoque.difference(produtosVendidos);
  print('Produtos que temos em estoque atualmente: $estoqueRestante');
}
