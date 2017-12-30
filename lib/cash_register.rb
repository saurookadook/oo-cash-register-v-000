require 'pry'

class CashRegister
  attr_accessor :items_list, :items_quantity, :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end

  def apply_discount
    if @discount > 0
      # binding.pry
      @total = @total * (@discount.to_f / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
  end

  def void_last_transaction
  end
end
