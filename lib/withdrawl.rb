
class Withdrawl
    attr_reader :withdraw, :time, :title

    def initialize(amount)
        @title = "Withdrawl"
        @amount = amount
        @time = Time.now
    end
end