class Account
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(amount, date)
    @balance += amount
    @date = date
  end
  
  def withdraw(amount, date)
    @balance -= amount
    @date = date
  end

end
