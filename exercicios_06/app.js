// Crie uma função que calcule o índice de massa corporal (IMC) de uma pessoa, a partir de sua altura, em metros, e peso, em quilogramas, que serão recebidos como parâmetro.
function imc(peso, altura) {
  let calculoImc = peso / (altura * altura);
  return calculoImc.toFixed(1);
}
console.log(imc(78, 1.90));

// Crie uma função que calcule o valor do fatorial de um número passado como parâmetro.

function fatorial(numero) {
  let resultado = 1;
  while (numero > 1) {
    resultado = resultado * numero;
    numero--;
  }
  return resultado;
}
console.log(fatorial(10));

// Crie uma função que converte um valor em dólar, passado como parâmetro, e retorna o valor equivalente em reais. Para isso, considere a cotação do dólar igual a R$4,80.
function convesor_moeda(valor) {
  let cotacao = Number(4.80);
  return (valor / cotacao);
}
console.log(`R$ ${convesor_moeda(1000).toFixed(2)}`);

// Crie uma função que mostre na tela a área e o perímetro de uma sala retangular, utilizando altura e largura que serão dadas como parâmetro.
function calcularSala(altura, largura) {
  let area = largura * altura;
  let perimetro = 2 * (largura + altura)

  console.log(`A area da sala é ${area} m²`);
  console.log(`O perimetro da sala é ${perimetro} m`);
}
calcularSala(10, 20);

// Crie uma função que mostre na tela a área e o perímetro de uma sala circular, utilizando seu raio que será fornecido como parâmetro. Considere Pi = 3,14.
function calcularSalaCircular(raio) {
  let pi = 3.14;

  let area = pi * (raio * raio).toFixed(2);
  let perimetro = 2 * (pi * raio).toFixed(2);

  console.log(`A area da sala circular é ${area} m²`);
  console.log(`O perimetro da sala circular é ${perimetro} m`);
}
calcularSalaCircular(10);

// Crie uma função que mostre na tela a tabuada de um número dado como parâmetro.
function tabuada(num) {
  let contador = 1;
  while (contador <= 10) {
    let result_tabuada = num * contador;
    console.log(result_tabuada);
    contador++;
  }
}
tabuada(parseInt(prompt('Qual a taboada que vc quer ver?')));