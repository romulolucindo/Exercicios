void main() {
  //   1) Imprimindo números no terminal
  // Imprima, no console, os números de 1 a 5 com o laço for.
  for (var i = 1; i <= 5; i++) {
    print(i);
  }

  // 2) Mostrando nomes no terminal
  // Crie uma lista de nomes que é exibida no terminal com o for. Os nomes podem ser: Ana, João e Maria.
  void nomes() {
    List<String> listaDeNomes = ["João", "Maria", "Ana"];
    for (String nome in listaDeNomes) {
      print(nome);
    }
  }

  nomes();

  // 3) Em busca da parada
  // Escreva um programa que imprime letras de uma frase “Parou! Este código não continua.” A ideia é que o código pare na primeira letra “!” encontrada.
  void parou() {
    String parou = ("Parou! Este código não continua.");
    for (int i = 0; i < parou.length; i++) {
      String letra = parou[i];

      if (letra == "!") {
        break;
      }
      print(letra);
    }
  }

  parou();
}
