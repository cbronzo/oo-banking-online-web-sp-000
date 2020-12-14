class BankAccount
  
  attr_accessor :name, :balance, :status
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
   def deposit(deposit_amt)
    self.balance += deposit_amt
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def close_account
    self.status = "closed"
  end

  def valid?
    balance > 0 && status == "open"
  end

end
