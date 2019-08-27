require 'account'

describe Account do 
    let(:account) { Account.new }
    
    it "prints a statement with one deposit" do
        account.deposit(200)
        expect(account.print).to eq ["Deposit 200"]
    end

    it "prints a statement with one deposit and one withdrawl" do 
        account.deposit(200)
        account.withdraw(50)
        expect(account.print).to eq ["Deposit 200", "Withdrawl 50"]
    end
end



