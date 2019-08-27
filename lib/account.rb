

class Account

    attr_accessor :balance, :statement

    def initialize
        @balance = 0
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

    def print
        @statement = statement
        statement.map do |transaction|
            "date || credit/debit || balance"
           "#{transaction.date.strftime("%F")} #{transaction.title} #{transaction.amount.to_s} #{@balance}"
        end
    end

end