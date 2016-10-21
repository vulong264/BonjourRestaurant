class AddConfirmedAtToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :confirmed_at, :datetime
  end
end
