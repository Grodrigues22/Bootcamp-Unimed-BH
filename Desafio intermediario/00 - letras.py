###         MODELO INICIAL      ###

# alfabeto = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
# Letra = str(input("Escreva uma letra do alfabeto para saber a posição: "))

# for letra in alfabeto:
#     if letra == Letra:
#         saida = alfabeto.index(Letra)+1
#         print(saida)

###         FORMA CORRETA SEGUNDO A DIO      ###

# letra = input() 
# print(ord(letra)-64)


import string
alfabeto = list(string.ascii_lowercase)
Letra = str(input("Escreva uma letra do alfabeto para saber a posição: "))

for letra in alfabeto:
    if letra == Letra:
        saida = alfabeto.index(Letra)+1
        print(saida)
