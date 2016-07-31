class BankAccount

  attr_accessor :bank_account, :balance, :status, :money
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = bank_account
    @balance = 1000
    @status = "open"
  end

  def deposit(money)
    @balance += money
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    if (self.status == "open") && (self.balance > 0)
      true
    else
      false
    end
  end

  def close_account
    self.status = "closed"
  end

end
