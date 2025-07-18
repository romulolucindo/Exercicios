// A Dev Kanban está desenvolvendo um aplicativo de produtividade onde as pessoas usuárias podem verificar suas tarefas.
// Crie uma função que receba a lista de tarefas e exiba todas as tarefas.
void main() {
  exibirTarefas();
  exibirIdFuncionarios();
  exibirFrutas();
}

void exibirTarefas() {
  List<String> listaTarefas = [
    'Preparar apresentação da reunião semanal',
    'Atualizar perfil do LinkedIn',
    'Estudar fundamentos de Git e GitHub',
    'Comprar materiais de escritório',
    'Revisar código do módulo de autenticação',
    'Escrever artigo para o blog da equipe',
    'Testar nova funcionalidade do app mobile',
    'Agendar feedback 1:1 com o time',
  ];
  for (String lista in listaTarefas) {
    print(lista);
  }
}

// Em um sistema administrativo, cada funcionário é representado por um ID (identificador único) em forma de inteiro.
// Crie uma função que receba a lista de IDs dos funcionários e exiba apenas os IDs que são pares.

void exibirIdFuncionarios() {
  List<int> idFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print('O Id dos funcionarios são: $idFuncionarios');
  for (int idPares = 0; idPares < idFuncionarios.length; idPares++) {
    if (idFuncionarios[idPares] % 2 == 0) {
      print('Em pares fica assim: ${idFuncionarios[idPares]}');
    }
  }
}

// Uma empresa está gerenciando o inventário de seus produtos e precisa de uma solução para monitorar a quantidade de unidades de certos itens em seu estoque. Para isso, você deve criar uma função que, dado uma lista de produtos, conte quantas vezes o item "maçã" aparece na lista de produtos.

void exibirFrutas() {
  List<String> produtos = ["maçã", "banana", "maçã", "laranja", "maçã"];

  int contadorDeProdutos = 0;

  for (String produto in produtos) {
    if (produto == 'maçã') {
      contadorDeProdutos++;
    }
  }
  print('Quantidade de Maçã no estoque é: $contadorDeProdutos');
}
