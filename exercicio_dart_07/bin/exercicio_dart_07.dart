import 'dart:io';
import 'package:http/http.dart';
import 'dart:convert';

void main() async {
  await getLivros("Jorge Amado");
  print("Digite quais ingredientes vc tem disponivel pf?");
  String input = stdin.readLineSync()!;
  List<String> ingredientesDisponiveis = input
      .split(',')
      .map((e) => e.trim())
      .toList();
  await getRecipe(ingredientesDisponiveis);
}

// Exercício 1: Buscando livros por autor em uma biblioteca digital
// Você está desenvolvendo um sistema de gerenciamento para uma biblioteca digital. Os dados dos livros são armazenados em um formato JSON que inclui título, pessoas autora, ano de publicação, entre outros.
// Sua tarefa é criar uma função em Dart que busque todos os livros de um determinado pessoa autora e exiba os títulos dos livros encontrados no console.
// Sua base de dados está disponível no arquivo books.json.
Future<void> getLivros(String authotDesejado) async {
  String url =
      'https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json';
  Response response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    List<dynamic> livros = json.decode(response.body);
    print("Livros de $authotDesejado");
    bool encontrou = false;

    for (var livro in livros) {
      if (livro['author'] == authotDesejado) {
        print(' - ${livro['title']}');
        encontrou = true;
      }
    }
    if (!encontrou) {
      print("Nenhum livro encontrado.");
    }
  } else {
    print("Erro ao buscar livros: ${response.statusCode}");
  }
}

// Exercício 2: Filtrando receitas por ingredientes disponíveis
// Você trabalha em um aplicativo de receitas culinárias que ajuda os usuários a encontrar receitas baseadas nos ingredientes que têm em casa.
// As receitas são armazenadas em formato JSON e incluem uma lista de ingredientes.
// Sua tarefa é criar uma função em Dart que filtre as receitas que podem ser feitas com os ingredientes disponíveis que deverão ser fornecidas por uma lista de String no parâmetro na função, e exiba os nomes das receitas que podem ser preparadas com esses ingredientes.
Future<void> getRecipe(List<String> ingredientesDisponiveis) async {
  String url =
      "https://gist.githubusercontent.com/romulolucindo/88e9c81baec91475063462d53997804e/raw/33cb2b2a5efe46f64753f6f90ac9b7d3403afa2a/recipes.json";
  Response response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    List<dynamic> receitas = json.decode(response.body);
    print('Receitas que você pode fazer:');
    bool encontrou = false;

    for (var receita in receitas) {
      if (receita["ingredients"].every(
        (i) => ingredientesDisponiveis.contains(i),
      )) {
        print('- ${receita['nome']}');
        encontrou = true;
      }
    }
    if (!encontrou) {
      print("Nenhuma receita encontrada.");
    }
  } else {
    print("Erro ao buscar receitas: ${response.statusCode}");
  }
}
