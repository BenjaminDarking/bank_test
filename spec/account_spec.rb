require 'account'
require 'deposit'
require 'withdrawl'

describe Account do 
    let(:account) { Account.new }

    it "user deposits 200" do 
        account.deposit(200)
        expect(account.balance).to eq 300
        expect(account.statement).to_not be_empty
    end

    it "records time of deposit" do 
        account.deposit(200)
        expect(account.statement[0].time.to_s).to eq(Time.now.to_s)
    end

    it "user withdraws 500" do
        account.withdraw(100)
        expect(account.balance).to eq 0
        expect(account.statement).to_not be_empty
    end

    it "records time of withdrawl" do 
        account.withdraw(100)
        expect(account.statement[0].time.to_s).to eq(Time.now.to_s)
    end
end
