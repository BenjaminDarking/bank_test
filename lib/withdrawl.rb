
class Withdrawl
    attr_reader :withdraw, :time

    def initialize(amount)
        @amount = amount
        @time = Time.now
    end
end