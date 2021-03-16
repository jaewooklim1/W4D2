class Employee

    attr_reader :name, :boss, :salary, :title
    

    def initialize(name, boss=nil, salary, title)
        @name = name
        @boss = boss
        @salary = salary
        @title = title
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

    def boss=(name)
        @boss = name
    end

end