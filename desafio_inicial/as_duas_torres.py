# DICAS SOBRE PYTHON:
# FUNÇÃO input(): Ela recebe como parâmetro uma String que será visível ao usuário, 
# onde geralmente informa que tipo de informação ele está esperando receber;
# FUNÇÃO print(): Ela é a responsável por imprimir os dados e informar os valores no terminal;
# MÉTODO split(): permite dividir o conteúdo da variável de acordo com as condições especificadas 
# em cada parâmetro da função ou com os valores predefinidos por padrão;

# Abaixo segue um exemplo de código que você pode ou não utilizar


#   entrada = input().split()

#   distancia = int(entrada[0])
#   diametro1 = int(entrada[1])
#   diametro2 = int(entrada[2])



##########################      PROBLEMA        ##########################
# TODO: Calcule o ICM da comunicação dos Palatír de Sauron e Saruman, com 2 casas decimais no espaço #em branco abaixo:


########################### Como calcular ICM ( Interferência de Comunicação Mágica) ##########################
# basta dividir a distância entre os dois Palantír’s, pela soma do diâmetro dos mesmos.


##############      ENTRADA     ############# 
# A entrada é composta por 3 inteiros, N(0 < N < 10000), X e Y(0 < X, Y < 100), que indicam, respectivamente, a distância entre os Palantír, o diâmetro do Palantír de Sauron e o diâmetro do Palantír de Saruman.


##############     Saída       ##############
# Um valor real indicando o ICM da comunicação dos Palatír de Sauron e Saruman, com 2 casas decimais.

#   N(0 < N < 10000), X e Y(0 < X, Y < 100)

#   Distancia_entre_os_palantir = N
#   Diametro_do_paladir_de_sauron = X
#   Diametro_do_paladir_de_saruman = Y

Distancia = 200
Diametro1 = 3
Diametro2 = 8

Saida = (Distancia/(Diametro1 + Diametro2))

print(f"{Saida:.2f}")


