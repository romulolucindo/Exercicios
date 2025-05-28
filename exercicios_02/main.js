// Desafios
// Pergunte ao usuário qual é o dia da semana. Se a resposta for "Sábado" ou "Domingo", mostre "Bom fim de semana!". Caso contrário, mostre "Boa semana!".
let dia = prompt('Hoje é qual dia da semana?');

if (dia == 'Sabado' || dia == 'Domingo') {
  alert('Bom final de semana!!');
} else alert('Boa Semana!!!');

// Verifique se um número digitado pelo usuário é positivo ou negativo. Mostre um alerta informando.
let numero_info = prompt('Digite um numero positivo!');

if (numero_info >= 0) {
  alert(`O numero digitado foi ${numero_info}!!`);
} else alert('Por favor, digite um numero P O S I T I V O !!!');

// Crie um sistema de pontuação para um jogo. Se a pontuação for maior ou igual a 100, mostre "Parabéns, você venceu!". Caso contrário, mostre "Tente novamente para ganhar.".
let pontos = 101;
if (pontos >= 100) {
  alert('Parabens vc venceu!');
} else alert('Tente novamente para ganhar!');

// Crie uma mensagem que informa o usuário sobre o saldo da conta, usando uma template string para incluir o valor do saldo.
let saldo = 1000;
alert(`O saldo da sua conta é: ${saldo}`);

// Peça ao usuário para inserir seu nome usando prompt. Em seguida, mostre um alerta de boas-vindas usando esse nome.
let perg_nome = prompt('Qual o seu nome?');
alert(`Seja bem-vindo ${perg_nome}`);
