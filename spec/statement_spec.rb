require 'account'
require 'deposit'
require 'withdrawl'

describe Account do 

    it "user deposits 200" do 
        account = Account.new
        account.deposit(200)
        expect(account.balance).to eq 300
        expect(account.statement).to_not be_empty
    end

    it "records time of deposit" do 
        account = Account.new
        account.deposit(200)
        expect(account.statement[0].time.to_s).to eq(Time.now.to_s)
    end


    
# context "uiser withdraws from account" do
    it "user withdraws 500" do
        account = Account.new
        account.withdraw(100)
        expect(account.balance).to eq 0
        expect(account.statement).to_not be_empty
    end
    it "records time of withdrawl" do 
        account = Account.new
        account.withdraw(100)
        expect(account.statement[0].time.to_s).to eq(Time.now.to_s)
    end
end
