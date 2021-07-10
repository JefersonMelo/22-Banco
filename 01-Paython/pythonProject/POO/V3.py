# TODO Aula 03: https://www.youtube.com/watch?v=rq8cL2XMM5M&list=PL-osiE80TeTsqhIuOqKhwlXsIBIdSeYtc&index=3

class Employee:

    num_instances = 0
    percent = 1.04

    def __init__(self, name, lastname, sal):
        self.name = name
        self.lastname = lastname
        self.sal = sal
        self.email = '{}.{}@prop.com'.format(name, lastname)

        # count
        Employee.num_instances += 1

    def fullUser(self):
        return '{} {}'.format(self.name, self.lastname)

    def increase(self):
        self.sal = int(self.sal * self.percent)

    def increase_manager(self):
        Employee.percent = 1.10
        self.sal = int(self.sal * self.percent)

    @classmethod
    def set_raise_amount(cls, amount):# cls -> abreviação de class
        cls.percent = amount

    @classmethod
    def split_string(cls, emp_str):
        name, lastname, sal = str_1.split('-')
        return cls(name, lastname, sal)

    @staticmethod
    def workday(day):
        if day.weekday() == 5 or day.weekday() == 6:
            return False
        return True


emp_1 = Employee('Jef', 'Melo', 70000)
emp_2 = Employee('Jon', 'Car', 50000)

emp_1.increase_manager()
print(emp_1.sal)

# Split()
str_1 = 'Jef-Melo-70000'
str_2 = 'Jon-Car-60000'
str_3 = 'Jos-Gon-50000'

new_str_1 = Employee.split_string(str_1)
print(new_str_1.name)

# Trabalhando com datas: DateTime
import datetime

data = datetime.date(2021, 7, 12)
print(Employee.workday(data))

