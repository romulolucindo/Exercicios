// Crie um programa que verifica se uma palavra ou frase é um palíndromo.
let palavra = prompt();
let palavraInvertida = palavra.split('').reverse().join('');
if (palavra === palavraInvertida) {
  console.log(`A palavra ${palavra} é um palindromo`);
} else console.log(`A palavra ${palavra} NÃO é um palindromo`);


// Crie um programa com uma função que receba três números como argumentos e os retorne em ordem crescente. Exiba os números ordenados.

function numCrescente(num1, num2, num3) {
  let numeros = [num1, num2, num3];
  return numeros.sort((a, b) => a - b);
} console.log(numCrescente(10, 2, 1));