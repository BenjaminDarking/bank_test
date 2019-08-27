
class Deposit
    attr_reader :time

        def initialize(amount)
            @amount = amount
            @time = Time.now
        end
    end
