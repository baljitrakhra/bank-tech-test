 
 
require_relative './print'
require_relative './transaction'
class Account
 attr_reader :balance, :bank_statement
 
 def initialize
   @balance = 0.00
   @bank_statement = []
   @print_class = Print.new
 end
 
 def deposit_money(amount)
   @balance += amount
   push_deposit_to_statement(credit: amount, balance: @balance)
 end
 
 def withdraw_money(amount)
   fail 'Insufficient balance' if (@balance < amount)
   @balance -= amount
   push_withdrawl_to_statement(debit: amount, balance: @balance)
 end
 
 def print_statement
   @print_class.print("date || credit || debit || balance")
   @print_class.print(@bank_statement)
 end
 
 private
 
 def push_deposit_to_statement(credit: nil, balance: nil)
   amount = Transaction.new(credit: '%.2f' % credit, balance: '%.2f' % balance)
   @bank_statement.unshift(amount.display)
 end
 
 def push_withdrawl_to_statement(debit: nil, balance: nil)
   amount = Transaction.new(debit: '%.2f' % debit, balance: '%.2f' % balance)
   @bank_statement.unshift(amount.display)
 end
 
end
 


