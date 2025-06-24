// Criar uma função que exibe "Olá, mundo!" no console.
function helloWorld() {
  let saudacao = 'Hello World!';
  console.log(saudacao);
}
helloWorld();

// Criar uma função que recebe um nome como parâmetro e exibe "Olá, [nome]!" no console.
function pergunta(nome) {
  console.log(`Olá ${nome}!`);
}
pergunta('José');

// Criar uma função que recebe um número como parâmetro e retorna o dobro desse número.
function double(numero) {
  return numero * 2;
}
console.log(double(20));

// Criar uma função que recebe três números como parâmetros e retorna a média deles.
function media(num1, num2, num3) {
  return ((num1 + num2 + num3) / 3);
}
console.log(media(10, 20, 30));

// Criar uma função que recebe dois números como parâmetros e retorna o maior deles.
function maior(num1, num2) {
  return (Math.max(num1, num2));
}
console.log(maior(80, 50));

// Criar uma função que recebe um número como parâmetro e retorna o resultado da multiplicação desse número por ele mesmo
function multi(num1) {
  return num1 * num1;
}
console.log(multi(11));