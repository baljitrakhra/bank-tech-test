class Account
  attr_reader :balance, :bank_statment

  def initialize
    @balance = 0
    @bank_statment = []
  end

  def deposit_money(amount)
    @balance += amount
    time = Time.new.strftime("%d/%m/%Y")
    @bank_statment.push({ time: time, credit: amount, debit: "", balance: @balance })
  end

  def withdraw_money(amount)
    # will need to add a edge case to check balance before withdrwing 
    @balance -= amount
    time = Time.new.strftime("%d/%m/%Y")
    @bank_statment.push({ time: time, credit: "", debit: amount, balance: @balance })
  end
  
end
