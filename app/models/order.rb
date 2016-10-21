class Order < ApplicationRecord
    validates :name, presence: true
    has_many :order_items

    def total_price
        order_items.map{|e| e.food_item.price*e.quantity}.sum
    end

    def apply_discount(discount_percent)
        order_items.map{|e| e.food_item.price*e.quantity}.sum*discount_percent
    end

    def self.last_open
        where(confirmed_at: nil).last
    end
end
