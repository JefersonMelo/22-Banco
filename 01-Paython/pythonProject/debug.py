import random


def gRandom(upper):
    """

    :param upper: >= 0
    :return: int
    """

    r = random.randint(1, upper)
    return r


def main():
    run = True
    n = gRandom(10)
    n1 = gRandom(10)

    res = n * n1

    while run:
        a = input(f"Quanto é {n} x {n1}? ")

        if a.isdigit():

            if int(a) == res:
                print("OK!")
                run = False
            else:
                print("Errou!")
        else:
            print("Mostre um número positivo")


# Variável Global
times = 10

for x in range(times):
    main()
