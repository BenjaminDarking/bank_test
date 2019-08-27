require 'account'

describe "a user can make a withdrawl" do 
    it "user withdraws 500" do
        account = Account.new
        account.withdraw(500)
        expect(account.balance).to eq 200
    end
end