require 'account'
describe Account do
context "bank account" do
  it "is initialized with a zero balance" do
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
  it " will print a bank statement" do
    account = Account.new
    account.deposit_money(10)
    account.withdraw_money(5)
    expect { account.print_statement }.not_to raise_error
  end
   it " will raise an error if there are no sufficient fund in the account for withdrawal " do
    account = Account.new
    expect { account.withdraw_money(5) }.to raise_error ("Insufficient balance")
  end
end
end
 


