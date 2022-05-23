require 'transaction'

describe Transaction do
  context '#display' do
    it ' shows time of the transaction' do
      expect(subject.display).to eq "#{Time.new.strftime("%d/%m/%Y")} || || || "
    end
    it ' show the amount which is debited to the account' do
      debit_transaction = Transaction.new(debit: 10.0)
      expect(debit_transaction.display).to eq "#{Time.new.strftime("%d/%m/%Y")} || || 10.0|| "
    end
    it ' show the amount which is credited to the account' do
      credit_transaction = Transaction.new(credit: 20.0)
      expect(credit_transaction.display).to eq "#{Time.new.strftime("%d/%m/%Y")} || 20.0|| || "
    end
  end
end