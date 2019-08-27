require 'account'
require 'deposit'
require 'withdrawl'

describe Account do 
    let(:account) { Account.new }

    it "user deposits 200" do 
        account.deposit(200)
        expect(account.balance).to eq 200
        expect(account.statement).to_not be_empty
    end

    it "records date of deposit" do 
        account.deposit(200)
        expect(account.statement[0].date.strftime("%F")).to eq(Time.now.strftime("%F"))
    end

    it "user withdraws 100" do
        account.withdraw(100)
        expect(account.balance).to eq -100
        expect(account.statement).to_not be_empty
    end

    it "records date of withdrawl" do 
        account.withdraw(100)
        expect(account.statement[0].date.strftime("%F")).to eq(Time.now.strftime("%F"))
    end
end
