class AddGrandTotalToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :grand_total, :decimal
  end
end
