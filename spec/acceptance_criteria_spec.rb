require 'account'
require 'deposit'
require 'withdrawl'
require 'timecop'

describe Account do 
    before(:all) do 
     @account = Account.new 
    end

    it "user deposits 1000 on 10-01-2012" do 
        date = Time.local(2012, 01, 10, 1, 01, 00)
        Timecop.freeze(date)
        @account.deposit(1000)
        expect(@account.balance).to eq 1000
        expect(@account.statement[0].date.strftime("%F")).to eq "2012-01-10"
    end

    it "user deposits 2000 on 13-01-2012" do 
        date = Time.local(2012, 01, 13, 1, 01, 00)
        Timecop.freeze(date)
        @account.deposit(2000)
        expect(@account.balance).to eq 3000
        expect(@account.statement[1].date.strftime("%F")).to eq "2012-01-13"
    end

    it "user withdraws 500 on 14-01-2012" do 
        date = Time.local(2012, 01, 14, 1, 01, 00)
        Timecop.freeze(date)
        @account.withdraw(500)
        expect(@account.balance).to eq 2500
        expect(@account.statement[2].date.strftime("%F")).to eq "2012-01-14"
    end

    it "user prints her statement showing the previous transactions listed above" do 
        expect(@account.print).to eq ["2012-01-10 Deposit 1000 2500", "2012-01-13 Deposit 2000 2500", "2012-01-14 Withdrawl 500 2500"]
    end

end
