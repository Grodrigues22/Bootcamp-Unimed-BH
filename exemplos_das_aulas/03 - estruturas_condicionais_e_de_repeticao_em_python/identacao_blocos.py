from tkinter.filedialog import SaveFileDialog


def sacar(valor):
    saldo = 500

    if saldo >= valor:
        print("valor sacado!")
        print("retire o seu dinheiro na boca do caixa")

    if saldo < valor:
        print("saldo insuficiente!")
        print("Favor verificar limite disponivel.")

    print("Obrigado por ser nosso cliente, tenha um bom dia!")


def depositar(valor):
    saldo = 500
    saldo += valor

sacar(1000)


