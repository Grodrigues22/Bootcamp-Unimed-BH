# DICAS SOBRE PYTHON:
# FUNÇÃO input(): Ela recebe como parâmetro uma String que será visível ao usuário, 
# onde geralmente informa que tipo de informação ele está esperando receber;
# FUNÇÃO print(): Ela é a responsável por imprimir os dados e informar os valores no terminal;
# MÉTODO split(): permite dividir o conteúdo da variável de acordo com as condições especificadas 
# em cada parâmetro da função ou com os valores predefinidos por padrão;

# Abaixo segue um exemplo de código que você pode ou não utilizar
# valores = input().split()

##########################      PROBLEMA        ##########################
# TODO:  Calcule quantidade de litros necessária para realizar a viagem e imprima com TRÊS dígitos após o ponto decimal

# Distancia/tempo = km/h
# Litros necessários

###########################     Entrada     ###########################
# O arquivo de entrada contém dois inteiros. O primeiro é o tempo gasto na viagem em horas e o segundo é a velocidade média durante a mesma em km/h.

# KM/L = 12
# Tempo = 10
# KM/H = 85
# Distancia = (Tempo * KM/H)
# Litros_necessatios = (Distancia / KM/L)


###########################     Saída       ###########################
# Imprima a quantidade de litros necessária para realizar a viagem, com três dígitos após o ponto decimal


valores = input("Informe tempo e a velocidade media em KMH: ").split(' ')

Tempo = int(valores[0])
KMH = int(valores[1])
KML = 12

Distancia = (Tempo * KMH)
Litros_necessatios = (Distancia / KML)

print(f"{Litros_necessatios:.3f}")


###########################     FORMA MAIS ADEQUADA DA ATIVIDADE       ###########################

tempo, velocidade = map(int,input().split())
quantidade_litros = (tempo * velocidade) / 12

print(f"{quantidade_litros:.3f}")