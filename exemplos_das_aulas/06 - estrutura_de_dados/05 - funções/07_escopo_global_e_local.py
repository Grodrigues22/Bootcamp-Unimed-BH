salario = 2000


def salaraio_bonus(bonus,lista):
    global salario

    lista_aux = lista.copy()
    lista_aux.append(2)
    print(f"lista aux={lista_aux}")

    salario += bonus
    return salario

lista = [1]
salario_com_bonus = salaraio_bonus(500, lista) # 2500
print(salario_com_bonus)
print(lista)





