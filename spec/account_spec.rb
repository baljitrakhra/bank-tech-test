require 'account'

describe Account do
  context "bank account" do
    it "is initialised with a zero balance" do
      account = Account.new
      expect(account.balance).to equal 0
    end
    it "will accept money" do
      account = Account.new
      account.deposit_money(10)
      expect(account.balance).to eq 10
    end

    it " will let you withdraw money" do
      account = Account.new
      account.deposit_money(10)
      account.withdraw_money(5)
      expect(account.balance).to eq 5
    end
  end
end
