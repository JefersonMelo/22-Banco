# TODO Aula 04: https://www.youtube.com/watch?v=3ohzBxoFHAY&list=PL-osiE80TeTsqhIuOqKhwlXsIBIdSeYtc&index=6

class Employee:

    def __init__(self, name, lastname, sal):
        self.name = name
        self.lastname = lastname
        self.sal = sal
        self.email = '{}.{}@prop.com'.format(name, lastname)

    def fullname(self):
        return '{} {}'.format(self.name, self.lastname)


emp_1 = Employee('Jef', 'Melo', 70000)
emp_2 = Employee('Jon', 'Car', 50000)
