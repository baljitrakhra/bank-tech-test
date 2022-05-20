class Account
  attr_reader :balance, :bank_statment

  def initialize
    @balance = 0.00
    @bank_statment = []
  end

  def deposit_money(amount)
    @balance += amount
    time = Time.new.strftime("%d/%m/%Y")
    @bank_statment.push({ "time": time, "credit": amount.to_f, "debit": "", "balance": @balance })
  end

  def withdraw_money(amount)
    # will need to add a edge case to check balance before withdrwing 
    @balance -= amount
    time = Time.new.strftime("%d/%m/%Y")
    @bank_statment.push({ "time": time, "credit": "", "debit": amount.to_f, "balance": @balance })
  end

  def print_statment
    puts "date || credit || debit || balance"
    @bank_statment.each do |activity|
      print " #{activity[:time]} || #{activity[:credit]} || #{activity[:debit]} || #{activity[:balance]} \n"
    end
  end

end
