require "pry"
class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end 
  
  def valid? 
    receiver.valid? and sender.valid?
  end
  def execute_transaction
    if sender.balance > amount && self.valid? && self.status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else 
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
  end 
  
  def reverse_transfer 
<<<<<<< HEAD
    if status == "complete"
       @sender.balance += amount
       @receiver.balance -= amount
       @status = "reversed"
    end 
=======
    # sender.balance += amount
     receiver.balance -= amount
>>>>>>> d0518e3a3f5b739a29c3e23b6b02c60b77cfac43
  end 
end
