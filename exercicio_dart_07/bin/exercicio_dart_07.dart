import 'package:http/http.dart';
import 'dart:convert';

void main() async {
  await getLivros("jorge Amado");
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
  } else {
    print("Erro ao buscar livros: ${response.statusCode}");
  }
}
