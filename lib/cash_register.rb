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
  end

  def items
  end

  def void_last_transaction
  end
end
