
class Deposit
    attr_reader :time, :amount, :title

        def initialize(amount)
            @title = "Deposit"
            @amount = amount
            @time = Time.now
        end
    end
