class Employee
attr_reader :salary
    def initialize(name, title, salary, boss=nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss # manager instance
    end

    def boss=(boss)
        @boss = boss
        boss.add_employee(self) unless boss.nil?
    end

    def bonus(multiplier)
        @bonus = @salary * multiplier
    end
end


class Manager < Employee
    def initialize(employees, boss)
        @employees = []
        @boss = boss
    end

    def bonus(multiplier)
        self.subsalary * multiplier

    end

    def subsalary
        sum = 0
        self.employees.each do |employee|
            if employee.is_a?(Manager)
                sum += employee.salary + employee.subsalary
            else
                sum += employee.salary
        end
        return sum
    end

    def add_employee(employee)
        @employees << employee
    end
end

