
class Withdrawl
    attr_reader :amount, :time, :title

    def initialize(amount)
        @title = "Withdrawl"
        @amount = amount
        @time = Time.now
    end
end