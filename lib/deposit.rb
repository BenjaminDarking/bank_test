
class Deposit
    attr_reader :date, :amount, :title

        def initialize(amount)
            @title = "Deposit"
            @amount = amount
            @date = Time.now
        end
    end
