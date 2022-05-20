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
      expect(account.deposit).to include [10, Time.new.strftime("%d/%m/%Y")]
    end
  end
end
