require_relative "./employee"

class Manager < Employee

    attr_reader :employee

    def initialize(name, boss=nil, salary, title)
        # @name = name
        # @boss = boss
        # @salary = salary
        # @title = title
        @employee = []
        super
    end

    def employees(name)
        @employee << name
    end

    def bonus(multiplier)
        bonus = employee_salary * multiplier
        bonus
    end

    def employee_salary
        
        totalSalary = 0

        self.employee.each do |employee|
            if employee.is_a?(Manager)
                totalSalary += employee.salary + employee.employee_salary
            else
                totalSalary += employee.salary
            end
        end

        totalSalary
    end



end