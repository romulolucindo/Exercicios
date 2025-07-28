// Crie um contador que comece em 1 e vá até 10 usando um loop while.Mostre cada número.
let contador = 1;

while (contador <= 10) {
  console.log(contador);
  contador++;
}

// Crie um contador que começa em 10 e vá até 0 usando um loop while.Mostre cada número.
let contador_02 = 10;

while (contador_02 >= 0) {
  console.log(contador_02);
  contador_02--;
}

// Crie um programa de contagem regressiva.Peça um número e conte deste número até 0, usando um loop while no console do navegador.
let contador_03 = prompt('Digite qual o numero que vamos contar até 0');

while (contador_03 >= 0) {
  console.log(contador_03);
  contador_03--;
}

// Crie um programa de contagem progressiva.Peça um número e conte de 0 até esse número, usando um loop while no console do navegador.
let contador_04 = 0;
let meta = Number(prompt('Digite o numero que vamos contar a partir do 0'));

while (contador_04 <= meta) {
  console.log(contador_04);
  contador_04++;
}