# TODO Aula 04: https://www.youtube.com/watch?v=RSl87lqOXDE&list=PL-osiE80TeTsqhIuOqKhwlXsIBIdSeYtc&index=4

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


class Devs(Employee):
    percent = 1.10

    def __init__(self, name, lastname, sal, program_lang):
        super().__init__(name, lastname, sal)
        self.program_lang = program_lang


class Manager(Employee):

    def __init__(self, name, lastname, sal, employees=None):
        super().__init__(name, lastname, sal)
        if employees is None:
            self.employees = []
        else:
            self.employees = employees

    def add_employ(self, employ):
        if employ not in self.employees:
            self.employees.append(employ)

    def remove_employ(self, employ):
        if employ in self.employees:
            self.employees.remove(employ)

    def print_employees(self):
        for employ in self.employees:
            print('-->', employ.fullname())


# print(help(Devs))  # Retorna os Atributos da Classe

dev_1 = Devs('Jef', 'Melo', 70000, 'Kotlin')
dev_2 = Devs('Jon', 'Car', 50000, 'Python')

m_1 = Manager('Gerente', 'Gen', 90000, [dev_1])

print(m_1.name)
# m_1.print_employees()

m_1.add_employ(dev_2)
# m_1.print_employees()

m_1.remove_employ(dev_1)
m_1.print_employees()

print(isinstance(m_1, Employee))# Retorna um bool se extend ou não de x class
print(issubclass(m_1, Employee))# Retorna um bool se é ou não uma sub class de

# print(dev_1.sal)
# dev_1.apply_raise()
# print(dev_1.sal)
# print(dev_1.email)
# print(dev_1.program_lang)
# print(dev_2.program_lang)
