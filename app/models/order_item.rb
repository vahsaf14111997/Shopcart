class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  before_save :set_unitprice
  before_save :set_total
#   before_action :set_unitprice 
#   before_action :set_total
    def unit_price
        if persisted?
            self[:unit_price]
        else
            product.price
        end
    end

    def total
        unit_price * quantity
    end

    private
    
    def set_unitprice
        self[:unit_price] = unit_price
    end
    
    def set_total 
        self[:total] = total * quantity
    end
end
