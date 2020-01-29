class CashRegister
    def initialize (employee_discount = 0)
        @total = 0
        @discount = employee_discount
        @item_array = []
    end
    attr_accessor :discount, :total, :item_array, :last_item_price 

    def total
        return @total
    end

    def add_item (item, price, quantity = 1)
        @last_item_price = quantity * price
        @total += @last_item_price
        quantity.times {@item_array << item}
    end

    def apply_discount
        @total = @total - discount * 10
        if @discount != 0
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        return @item_array
    end

    def void_last_transaction
        @total -= @last_item_price
    end
end
