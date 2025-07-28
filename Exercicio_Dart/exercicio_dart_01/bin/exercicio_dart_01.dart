import 'dart:io';

// Abra o terminal do seu computador (o powershell no caso do Windows);
// Crie um novo projeto Dart com o comando dart create meu_app no terminal;
// Abra a pasta do projeto criado no terminal com o VS Code;
// Importe a biblioteca 'dart:io';
// Solicite o nome da pessoa usuária com a mensagem "Olá, me chamo Dart. Qual seu nome?";
// Armazene a entrada da pessoa usuária em uma variável chamada entrada;
// Exiba a mensagem "Muito prazer, $entrada. Vamos fazer vários programas juntos!".
void main() {
  print("Olá, me chamo Dart. Qual seu nome?");
  var nome = stdin.readLineSync();
  print("Muito prazer, $nome. Vamos fazer vários programas juntos!");
}
