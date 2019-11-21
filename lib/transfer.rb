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
    sender_receiver = sender.balance + receiver.balance
    true if sender_receiver > 0
    receiver.valid?
    sender.valid?
  end
  def execute_transaction
    sender.balance -= amount if receiver.balance += amount  and self.status = "complete"
    sender.balance += amount if sender.balance < 950 
    receiver.balance -= amount if receiver.balance > 1050 
    'Transaction rejected. Please check your account balance.' if sender.status == "rejected"
  end 
end
