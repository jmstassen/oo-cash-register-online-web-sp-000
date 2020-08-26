class CashRegister
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @old_total = @total
    @total = @total + (quantity * price)
    @items << title
  end

  def apply_discount
    if @discount = 0
      return "There is no discount to apply"
    else
      @total = @total * (1-(@discount / 100))
      return "Success - new total is #{@total}"
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    @total = @old_total
  end
end
