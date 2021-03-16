require_relative "./employee"

class Manager < Employee
    def initialize(name, boss=nil, salary, title)
        @name = name
        @boss = boss
        @salary = salary
        @title = title
        @employee = []
    end

    def subordinates(name)
         @employee << name
end