class RemovePriceFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :price, :integer
  end
end
