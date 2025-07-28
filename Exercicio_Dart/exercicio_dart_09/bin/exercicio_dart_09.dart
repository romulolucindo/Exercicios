void main() {
  Set<int> quartos = dadosQuartos();

  exibirCompras();
  verificacaoQuarto(quartos, 204);
}
// João trabalha em uma plataforma de e-commerce e está implementando uma funcionalidade de recomendação de produtos. Ele possui uma lista de produtos que a pessoa usuária visitou e quer verificar se algum item visitado já foi adicionado ao carrinho.
// Crie uma função que receba as listas de produtos visitados e no carrinho, exibindo os itens visitados que ainda não estão no carrinho.

void exibirCompras() {
  List<String> produtosVisitados = [
    "arroz",
    "feijão",
    "macarrão",
    "leite",
    "açúcar",
  ];
  List<String> produtosCarrinho = ["arroz", "feijão"];
  for (String produtoVisitado in produtosVisitados) {
    if (!produtosCarrinho.contains(produtoVisitado)) {
      print('Gostaria de adicionar esses itens ao carrinho? $produtoVisitado');
    }
  }
}

// Em um sistema de reservas, é necessário verificar se um determinado item está disponível em um conjunto de itens disponíveis.
// Crie uma função que receba um set de itens disponíveis e um código e verifique se ele está presente no set.
Set<int> dadosQuartos() {
  return {101, 102, 201, 203, 305};
}

void verificacaoQuarto(Set<int> quartoDisponivel, int codigo) {
  if (quartoDisponivel.contains(codigo)) {
    print('Quarto: $codigo disponivel');
  } else {
    print('Quarto: $codigo não está disponivel');
  }
}
