class OrderItem < ApplicationRecord
  belongs_to :food_item
  belongs_to :order

  validates :food_item, :order, presence: true
end
