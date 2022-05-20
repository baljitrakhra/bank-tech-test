require 'account'

describe Account do
  context "opening a bank account" do
    it "is initialised with a zero balance" do
      account = Account.new
      expect(account.balance).to equal 0
    end
  end
end
