# TODO Aula 02: https://www.youtube.com/watch?v=BJ-VvGyQxho&list=PL-osiE80TeTsqhIuOqKhwlXsIBIdSeYtc&index=2

class User:

    num_instances = 0
    percent = 1.04

    def __init__(self, name, lastname, sal):
        self.name = name
        self.lastname = lastname
        self.sal = sal
        self.email = '{}.{}@prop.com'.format(name, lastname)

        # count
        User.num_instances += 1

    def fullUser(self):
        return '{} {}'.format(self.name, self.lastname)

    def increase(self):
        self.sal = int(self.sal * self.percent)


usr_1 = User('Jef', 'Melo', 70000)
usr_2 = User('Jon', 'Car', 50000)

usr_1.increase()
print(usr_1.sal)

# Acesso ao Objeto
print(usr_1.__dict__)



