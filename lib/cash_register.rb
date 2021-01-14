
require 'pry'

class CashRegister


    def initialize (discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    attr_accessor :total, :discount, :last_transaction, :items 

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        self.last_transaction = price * quantity
        quantity.times { items.push(title)} 
        # binding.pry
    end 

    def apply_discount
       if discount != 0
        self.total = (self.total*((100.0-discount.to_f)/100)).to_i
        #  binding.pry
        "After the discount, the total comes to $#{self.total}."  
       else 
        "There is no discount to apply."
       end 
    end 

    def void_last_transaction
        self.total -= self.last_transaction
        if self.items.length == 0
            self.total = 0.0
        end 
    end 

end 

# cash_register = CashRegister.new

# puts cash_register.instance_variables

# # puts cash_register.total


