require 'account'
require 'withdrawl'

describe "a user can make a withdrawl" do 
    it "user withdraws 500" do
        account = Account.new
        account.withdraw(100)
        expect(account.balance).to eq 0
        expect(account.statement).to_not be_empty
    end
end