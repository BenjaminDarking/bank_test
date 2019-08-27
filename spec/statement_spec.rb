require 'account'

describe Account do 
    let(:account) { Account.new }

    it "prints a statement with one deposit" do
        account.deposit(200)
        expect(account.print).to eq ["#{Time.now.strftime("%F")} Deposit 200 #{account.balance}"]
    end

    it "prints a statement with one deposit and one withdrawl" do 
        account.deposit(200)
        account.withdraw(50)
        expect(account.print).to eq ["#{Time.now.strftime("%F")} Deposit 200 #{account.balance}", "#{Time.now.strftime("%F")} Withdrawl 50 #{account.balance}"]
    end
end



