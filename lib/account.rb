

class Account

    attr_reader :balance

    def initialize
        @balance = 700
    end

    def withdraw(amount)
        @balance -= amount 
    end

end