class CashRegister

    attr_accessor :total, :items, :last_transaction, :discount
    

def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
end

def add_item(title, price, quantity = 1)
    @last_transaction = price*quantity
    @total += price*quantity
    quantity.times {@items << title}
end

def apply_discount
    if @discount > 0.0
      @total = @total - @total*@discount/100
      "After the discount, the total comes to $#{@total.round}."
    elsif @discount <= 0.0
     "There is no discount to apply."
    end
end

def void_last_transaction
    @total -= @last_transaction
end



end
