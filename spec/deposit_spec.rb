require 'account'
require 'deposit'

describe "user desposit money into account" do
    it "user deposits 200" do 
        account = Account.new
        account.deposit(200)
        expect(account.balance).to eq 300
        expect(account.statement).to_not be_empty
    end
end