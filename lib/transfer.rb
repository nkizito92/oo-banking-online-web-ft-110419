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
    # binding.pry
  receiver.balance + amount if self.sender.balance - amount 
  end 
end
