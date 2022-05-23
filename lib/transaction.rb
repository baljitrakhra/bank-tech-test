class Transaction
  def initialize
    @time = Time.new
  end
  
  def display
    "#{time} || || || "
  end

  def time
    @time.strftime('%d/%m/%Y')
  end
end