# TODO Aula 04: https://www.youtube.com/watch?v=3ohzBxoFHAY&list=PL-osiE80TeTsqhIuOqKhwlXsIBIdSeYtc&index=6

class Employee:

    def __init__(self, name, lastname):
        self.name = name
        self.lastname = lastname

    @property
    def email(self):
        return '{}.{}@prop.com'.format(self.name, self.lastname).lower()

    @property
    def fullname(self):
        return '{} {}'.format(self.name, self.lastname)

    @fullname.setter
    def fullname(self, name):
        name, lastname = name.split(' ')
        self.name = name
        self.lastname = lastname


emp_1 = Employee('Jef', 'Melo')
emp_2 = Employee('Jon', 'Car')

emp_2.fullname = 'Test Tests'

print(emp_1.fullname)
print(emp_2.fullname)
print(emp_2.email)
