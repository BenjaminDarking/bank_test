

class Account

    attr_reader :balance, :statement

    def initialize
        @balance = 100
        @statement = []
    end

    def withdraw(amount)
        
        @statement.push(Withdrawl.new(amount))
        @balance -= amount 
    end

    def deposit(amount) 
        @balance += amount 

    end

end