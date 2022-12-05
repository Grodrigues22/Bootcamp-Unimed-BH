# from unittest import case

# while True: 
#     try: 
#            # TODO:  Programe aqui dentro as condições necessárias para satisfazer o problema
#            # e imprima a saída de acordo com a situação das pernas do papagaio

#            situacao = input().lower().strip
#            def switch(case):
#             if case == "esquerda":
#                 print("ingles")
#             elif case == "direita":
#                 print("frances")
#             elif case == "nenhuma":
#                 print("portugues")
#             elif case == "ambas":
#                 print("caiu")

#             switch(situacao)
            
#     except EOFError: 
#         break




while True:
    try:
        condicao = input()
        if condicao == 'esquerda':
            print('ingles')
        if condicao == 'direita':
            print('frances')
        if condicao == 'nenhuma':
            print('portugues')
        if condicao == 'ambas':
            print('caiu')
    except EOFError:
        break