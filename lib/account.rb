

class Account

    attr_accessor :balance, :statement

    def initialize
        @balance = 100
        @statement = []
    end

    def withdraw(amount)
        @statement.push(Withdrawl.new(amount))
        @balance -= amount 
    end

    def deposit(amount) 
        @statement.push(Deposit.new(amount))
        @balance += amount 

    end

end