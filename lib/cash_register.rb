require 'pry'

class CashRegister
  attr_accessor :title, :items_list, :items_quantity, :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items_list = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @items_list << title
    end
  end

  def apply_discount
    @total = @total.to_f
    if @discount > 0
      @total = (@total - ((@discount.to_f / 100.0) * @total))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items_list
  end

  def void_last_transaction

  end
end
