class RenameProductInOrders < ActiveRecord::Migration[5.1]
  def change
  	rename_column :orders, :product, :description
  end
end
