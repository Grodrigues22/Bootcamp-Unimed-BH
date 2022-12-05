from unicodedata import name


nome = "Gabriel"
idade = 24
professao = "Programado"
linguagem = "Python"
saldo = 45.435

dados = {"nome": "Gabriel", "idade": 24}

# formas das menos ultilizadas a mais recente no python
print("Nome: %s Idade: %s" % (nome, idade))

print("Nome: {} Idade: {}".format(nome, idade))

print("Nome: {1} Idade: {0}".format(idade, nome))
print("Nome: {1} Idade: {0} Nome: {1} {1}".format(nome, idade))

print("Nome: {nome} Idade: {idade}".format(nome=nome, idade=idade))
print("Nome: {name} Idade: {age} {name} {age}".format(age=nome, name=idade))
print("Nome: {nome} Idade: {idade}".format(**dados))

print(f"Nome: {nome} Idade: {idade}")
print(f"Nome: {nome} Idade: {idade} saldo: {saldo:.2f}")
print(f"Nome: {nome} Idade: {idade} saldo: {saldo:10.2f}")

print(f"saldo:{saldo:.2f}")
