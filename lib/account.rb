class Account
  attr_reader :balance, :deposit

  def initialize
    @balance = 0
    @deposit = []
  end

  def deposit_money(amount)
    @deposit << [amount, Time.new.strftime("%d/%m/%Y") ]
  end
end
