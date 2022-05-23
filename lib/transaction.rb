class Transaction
  def initialize(credit: nil, debit: nil, balance: nil)
    @time = Time.new
    @debit = debit
    @credit = credit
    @balance = balance
  end
  
  def display
    "#{time} || #{@credit}|| #{@debit}|| "
  end

  def time
    @time.strftime('%d/%m/%Y')
  end
end