# TODO Aula 04: https://www.youtube.com/watch?v=RSl87lqOXDE&list=PL-osiE80TeTsqhIuOqKhwlXsIBIdSeYtc&index=4

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
    def split_string(cls, emp_str):# trabalhando com Split()
        name, lastname, sal = emp_str.split('-')
        return cls(name, lastname, sal)

    @staticmethod
    def workday(day):# trabalhando com datas
        if day.weekday() == 5 or day.weekday() == 6:
            return False
        return True


emp_1 = Employee('Jef', 'Melo', 70000)
emp_2 = Employee('Jon', 'Car', 50000)

