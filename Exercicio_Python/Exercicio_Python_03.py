# Crie uma variável chamada “frase” e atribua a ela uma string de sua escolha. Em seguida, imprima a frase na tela.
frase = 'Aquele que se sujeita a algo que o fere, estará condenado a ser ferido pra sempre.'

# Crie um código que solicite uma frase e depois imprima a frase na tela.
frase_solicitada = input('Escreva o que quiser:')
print(frase)

# Crie um código que solicite uma frase à pessoa usuária e imprima a mesma frase digitada mas com todas as letras maiúsculas.

print(frase_solicitada.upper())

# Crie um código que solicite uma frase à pessoa usuária e imprima a mesma frase digitada mas com todas as letras minúsculas.

print(frase_solicitada.lower())


# Crie uma variável chamada “frase” e atribua a ela uma string de sua escolha. Em seguida, imprima a frase sem espaços em branco no início e no fim.

print(frase_solicitada.strip())

# Crie um código que solicite uma frase à pessoa usuária e imprima a mesma frase sem espaços em branco no início e no fim.

print(frase_solicitada.strip())


# Crie um código que solicite uma frase à pessoa usuária e imprima a mesma frase sem espaços em branco no início e no fim e em letras minúsculas.

print(frase_solicitada.strip().lower())


# Crie um código que solicite uma frase à pessoa usuária e imprima a mesma frase com todas as vogais “e” trocadas pela letra “f”.

frase_trocada = frase_solicitada.replace('e', 'f')
print(frase_trocada)

# Crie um código que solicite uma frase à pessoa usuária e imprima a mesma frase com todas as vogais “a” trocadas pela caractere “@”.

frase_trocada = frase_solicitada.replace('a', '@')
print(frase_trocada)


# Crie um código que solicite uma frase à pessoa usuária e imprima a mesma frase com todas as consoantes “s” trocadas pelo caractere “$”.

frase_trocada = frase_solicitada.replace('s', '$')
print(frase_trocada)
