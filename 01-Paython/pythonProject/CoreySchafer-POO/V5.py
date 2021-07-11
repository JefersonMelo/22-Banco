# TODO Aula 04: https://www.youtube.com/watch?v=3ohzBxoFHAY&list=PL-osiE80TeTsqhIuOqKhwlXsIBIdSeYtc&index=5

class Employee:
    percent = 1.04

    def __init__(self, name, lastname, sal):
        self.name = name
        self.lastname = lastname
        self.sal = sal
        self.email = '{}.{}@prop.com'.format(name, lastname)

    def fullname(self):
        return '{} {}'.format(self.name, self.lastname)

    def apply_raise(self):
        self.sal = int(self.sal * self.percent)

    # Métodos Especiais
    def __repr__(self):
        return "Employee({}, {}, {})".format(self.name, self.lastname, self.sal)

    def __str__(self):
        return '{}: {}'.format(self.fullname(), self.email)

    def __add__(self, other):
        return self.sal + other.sal


emp_1 = Employee('Jef', 'Melo', 70000)
emp_2 = Employee('Jon', 'Car', 50000)

# print(repr(emp_1))
# print(repr(emp_1))

# print(emp_1.__repr__())
# print(emp_1.__str__())

print(emp_1 + emp_2)
