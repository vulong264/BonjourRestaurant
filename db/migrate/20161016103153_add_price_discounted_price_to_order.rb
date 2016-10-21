class AddPriceDiscountedPriceToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :origin_price, :decimal
    add_column :orders, :discounted_price, :decimal
    add_column :orders, :shipping_cost, :decimal
  end
end
