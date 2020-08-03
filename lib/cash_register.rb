require 'pry'

class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times {@items << item}
    @total += price * quantity 
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @take_off = (@total * discount)/100
      @total -= @take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction
    @total
  end

end