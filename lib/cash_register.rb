require 'pry'

class CashRegister
  attr_accessor :total, :discount 
  
  def initialize(total, discount = 0)
    @total = 0 
    @discount = discount
  end
 
 
end
