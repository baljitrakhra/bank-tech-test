class Account
  attr_reader :balance, :deposit, :withdraw

  def initialize
    @balance = 0
    @deposit = []
    @withdraw = []
  end

  def deposit_money(amount)
    @deposit << [amount, Time.new.strftime("%d/%m/%Y") ]
  end

  def withdraw_money(amount)
    # will need to add a edge case to check balance before withdrwing 
    @withdraw << [amount, Time.new.strftime("%d/%m/%Y") ]
  end
end
