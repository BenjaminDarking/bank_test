
class Withdrawl
    attr_reader :amount, :date, :title

    def initialize(amount)
        @title = "Withdrawl"
        @amount = amount
        @date = Time.now
    end
end