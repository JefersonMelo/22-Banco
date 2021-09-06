# TODO Aula 01: https://www.youtube.com/watch?v=ZDa-Z5JzLYM&list=PL-osiE80TeTsqhIuOqKhwlXsIBIdSeYtc

class User:
    def __init__(self, name, lastname, sal):
        self.name = name
        self.lastname = lastname
        self.sal = sal
        self.email = '{}.{}@prop.com'.format(name, lastname)

    def fullUser(self):
        return '{} {}'.format(self.name, self.lastname)


usr_1 = User('Jef', 'Melo', 70000)
usr_2 = User('Jon', 'Car', 50000)

# usr_1.name = 'Jef'
# usr_1.lastname = 'Melo'
# usr_1.email = 'jef@prop.com'
# usr_1.sal = 50000
#
# usr_2.name = 'Jon'
# usr_2.lastname = 'Car'
# usr_2.email = 'jon@prop.com'
# usr_2.sal = 70000

print(usr_1.email)
print(usr_1.fullUser())

print(usr_2.email)
print(usr_2.fullUser())


