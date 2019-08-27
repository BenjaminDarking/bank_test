require 'account'

describe Account do 
    it "prints a list of depsoits and withdrawls" do
        account = Account.new
        account.deposit(200)
        expect(account.print).to eq("Deposit 200")
    end
end



