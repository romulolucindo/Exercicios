// Altere o conteúdo da tag h1 com document.querySelector e atribua o seguinte texto: Hora do Desafio.
let titulo = document.querySelector('h1');
titulo.innerHTML = 'Hora do Desafio!';

// Crie uma função que exiba no console a mensagem O botão foi clicado sempre que o botão Console for pressionado.
function botaoConsole() {
  console.log('O botão console foi clicado!');
}
// Crie uma função que exiba um alerta com a mensagem: Eu amo JS, sempre que o botão Alerta for pressionado.
function botaoAlert() {
  alert('O botão alert foi clicado!')
}

// Crie uma função que é executada quando o botão prompt é clicado, perguntando o nome de uma cidade do Brasil. Em seguida, exiba um alerta com a mensagem concatenando a resposta com o texto: Estive em {cidade} e lembrei de você.

function botaoPrompt() {
  let pergunta_cidade = prompt('Qual o nome de uma cidade do Brasil?');
  alert(`Estive em ${pergunta_cidade} e lembrei de você`);
}

// Ao clicar no botão soma, peça 2 números inteiros e exiba o resultado da soma em um alerta.
function botaoSoma() {
  let valor_01 = parseInt(Math.random() * 10 + 1);
  let valor_02 = parseInt(Math.random() * 10 + 1);
  let soma = valor_01 + valor_02;
  alert(`A soma de ${valor_01} e de ${valor_02} é ${soma}`);
}
