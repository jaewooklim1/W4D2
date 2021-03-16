require_relative "./employee"

class Manager < Employee

    attr_reader :employee

    def initialize(name, boss=nil, salary, title)
        @name = name
        @boss = boss
        @salary = salary
        @title = title
        @employee = []
    end

    def employee(name)
        @employee << name
    end

    def bonus(multiplier)
        bonus = employee_salary * multipler
        bonus
    end

    def employee_salary
        
        totalSalary = 0

        self.employee.each do |employee|
            if employee.is_a?(Manager)
                totalSalary += employee.salary + .salary
            else
                totalSalary += employee.salary
            end
        end

        totalSalary
    end



end