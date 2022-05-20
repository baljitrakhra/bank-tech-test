require 'account'

describe Account do
  context "bank account" do
    it "is initialised with a zero balance" do
      account = Account.new
      expect(account.balance).to equal 0.00
    end
    it "will accept money" do
      account = Account.new
      account.deposit_money(10)
      expect(account.balance).to eq 10.00
    end

    it " will let you withdraw money" do
      account = Account.new
      account.deposit_money(10)
      account.withdraw_money(5)
      expect(account.balance).to eq 5.00
    end

    it " will print a bank statment" do
      account = Account.new
      account.deposit_money(10)
      account.withdraw_money(5)
      expect { account.print_statment }.not_to raise_error
    end

    it " will print a bank statment for deposits" do
      account = Account.new
      account.deposit_money(10)
      expect {account.print_statment }.to output( /\d{2} \d{2} \d{4} || 10 ||  || 10/).to_stdout
    end
    it " will print a bank statment for withdrawal" do
      account = Account.new
      account.withdraw_money(5)
      expect { account.print_statment }.to output( /\d{2} \d{2} \d{4} || 5 ||  || -5/).to_stdout
    end
  end
end
