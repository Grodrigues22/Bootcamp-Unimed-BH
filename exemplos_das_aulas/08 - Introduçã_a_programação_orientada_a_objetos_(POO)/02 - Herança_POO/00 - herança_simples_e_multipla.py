
'''
Herança simples -- No exemplo abaixo mostra a class B herdando da class A
'''


class A:
    pass


class B(A):
    pass


'''
Herança multipla -- No exemplo abaixo mostra a class C herdando da class A e B, mesmo que B não tenha herdade da class A como no exemplo anterior.
'''


class A:
    pass


class B:
    pass


class C(A, B):
    pass
