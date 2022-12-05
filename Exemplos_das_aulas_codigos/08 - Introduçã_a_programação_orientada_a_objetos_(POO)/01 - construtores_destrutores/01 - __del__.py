class Cachorro:
    def __del__(self):
        print("Destruindo a instância")


c = Cachorro()
del c


