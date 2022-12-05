# Forma resumida

# salario = float(input())

# if 0 <= salario <= 600.00: percent = 17
# elif 600.01 <= salario <= 900.00: percent = 13
# elif 900.01 <= salario <= 1500.00: percent = 12
# elif 1500.01 <= salario <= 2000.00: percent = 10
# else: percent = 5

# ganho = n_salario = salario + (salario * percent)/100
# reajuste = n_salario - salario
# print(f"Novo salario: {ganho:.2f}\nReajuste ganho: {reajuste:.2f}\nEm percentual: {percent} %")



salario = int(input()) 
porcentagem_aumento1 = 0.17
porcentagem_aumento2 = 0.13
porcentagem_aumento3 = 0.12
porcentagem_aumento4 = 0.10
porcentagem_aumento5 = 0.05

if (salario <=600.0):
    salario_novo = salario + (salario * 0.17)
    reajuste = porcentagem_aumento1 * salario
    percentual = porcentagem_aumento1 * 100

elif (salario >= 600.01 and salario <= 900.00):
    salario_novo = salario + (salario * 0.13)
    reajuste = porcentagem_aumento2 * salario
    percentual = porcentagem_aumento2 * 100

elif (salario >= 900.01 and salario <= 1500.00):
    salario_novo = salario + (salario * 0.12)
    reajuste = porcentagem_aumento3 * salario
    percentual = porcentagem_aumento3 * 100

elif (salario >=1500.01 and salario <= 2000.00):
    salario_novo = salario + (salario * 0.10)
    reajuste = porcentagem_aumento4 * salario
    percentual = porcentagem_aumento4 * 100

else: 
    salario_novo = salario + (salario * 0.05)
    reajuste = porcentagem_aumento5 * salario
    percentual = porcentagem_aumento5 * 100
    
salario_novo = f'{salario_novo:.2f}'

reajuste = f'{reajuste:.2f}'

percentual = f'{percentual:.0f}'

# TODO:  Calcule o salário do funcionário e print o novo salário, bem como o valor de reajuste ganho e o índice reajustado (em porcentagem)
print(f'Novo salario: {salario_novo}\n Reajuste ganho: {reajuste}\n Em percentual: {percentual} %')