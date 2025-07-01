// Crie um programa que utilize o console.log para exibir uma mensagem de boas-vindas.
console.log('Boas-Vindas!');

// Crie uma variável chamada "nome" e atribua a ela o seu nome. Em seguida, utilize o console.log para exibir a mensagem "Olá, [seu nome]!" no console do navegador.
let nome = 'Romulo';
console.log(nome);

// Crie uma variável chamada "nome" e atribua a ela o seu nome. Em seguida, utilize o alert para exibir a mensagem "Olá, [seu nome]!" .
alert('Olá ' + nome);


// Utilize o prompt e faça a seguinte pergunta: Qual a linguagem de programação que você mais gosta?. Em seguida, armazene a resposta em uma variável e mostre no console do navegador.
let pergunta_linguagem = prompt('Qual linguagem de programação você mais gosta?');
console.log(pergunta_linguagem);

// Crie uma variável chamada "valor1" e outra chamada "valor2", atribuindo a elas valores numéricos de sua escolha. Em seguida, realize a soma desses dois valores e armazene o resultado em uma terceira variável chamada "resultado". Utilize o console.log para mostrar a mensagem "A soma de [valor1] e [valor2] é igual a [resultado]." no console.
let valor_1 = parseInt(Math.random() * 10);
let valor_2 = parseInt(Math.random() * 10);

let resultado = valor_1 + valor_2;

console.log(`A soma de ${valor_1} e ${valor_2} é igual a ${resultado}.`);


// Crie uma variável chamada "valor1" e outra chamada "valor2", atribuindo a elas valores numéricos de sua escolha. Em seguida, realize a subtração desses dois valores e armazene o resultado em uma terceira variável chamada "resultado". Utilize o console.log para mostrar a mensagem "A diferença entre [valor1] e [valor2] é igual a [resultado]." no console.

let resultado_difereca = valor_1 - valor_2

console.log(`A diferença de ${valor_1} e ${valor_2} é igual a ${resultado_difereca}.`);

// Peça ao usuário para inserir sua idade com prompt. Com base na idade inserida, utilize um if para verificar se a pessoa é maior ou menor de idade, exibindo uma mensagem apropriada no console.

let perg_idade = prompt('Qual a sua idade?');
if (perg_idade >= 18) {
  alert('Acesso permitido, Usuario maior de Idade!');
} else {
  alert('Acesso NEGADO, Usuario menor de Idade!');
}

// Crie uma variável "numero" e peça um valor com prompt verifique se é positivo, negativo ou zero. Use if-else para imprimir a respectiva mensagem.
let perg_numero = Number(prompt('Digite um qualquer numero'));
if (perg_numero > 0) {
  alert('Numero positivo');
} else if (perg_numero < 0) {
  alert('Numero negativo')
} else {
  alert('Numero 0');
}

//Use um loop while para imprimir os números de 1 a 10 no console.
let contar = 1;
while (contar <= 10) {
  console.log(contar);
  contar++;
}

//Crie uma variável "nota" e atribua um valor numérico a ela. Use if-else para determinar se a nota é maior ou igual a 7 e exiba "Aprovado" ou "Reprovado" no console.
let nota = 10;

if (nota >= 7) {
  alert('Aprovado :D')
} else {
  alert('Reprovado T-T')
}

//Use o Math.random para gerar qualquer número aleatório e exiba esse número no console.
console.log(Math.random());


//Use o Math.random para gerar um número inteiro entre 1 e 10 e exiba esse número no console.
console.log(parseInt(Math.random() * 10 + 1));

//Use o Math.random para gerar um número inteiro entre 1 e 1000 e exiba esse número no console.
console.log(parseInt(Math.random() * 1000 + 1));
