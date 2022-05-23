require 'print'
require 'transaction'
class Account
  attr_reader :balance, :bank_statment

  def initialize
    @balance = 0.00
    @bank_statment = []
    @print_class = Print.new
  end

  def deposit_money(amount)
    @balance += amount
    time = Time.new.strftime("%d/%m/%Y")
    @bank_statment.push({ "time": time, "credit": amount.to_f, "debit": "", "balance": @balance })
  end

  # def push_deposit_to_statment(credit: nil, balance: nil)
  #   amount = Transaction.new(credit: credit, balance: nil)
  #   @bank_statment.unshift(amount)
  # end

  def withdraw_money(amount)
    fail 'Insufficient balance' if (@balance < amount)
    @balance -= amount
    time = Time.new.strftime("%d/%m/%Y")
    @bank_statment.push({ "time": time, "credit": "", "debit": amount.to_f, "balance": @balance })
  end

  # def push_withdrawl_to_statment
  #   amount = Transaction.new(debit: debit, balance: balance)
  #   @bank_statment.unshift(amount)
  # end

  def print_statment
    @print_class.print("date || credit || debit || balance")
    @print_class.print(@bank_statment)
    # @bank_statment.each do |activity|
    #   print " #{activity[:time]} || #{activity[:credit]} || #{activity[:debit]} || #{activity[:balance]} \n"
    # end
  end

end
