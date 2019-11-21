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
    
  end
end
