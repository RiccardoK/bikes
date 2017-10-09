class AddLastnameToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :lastname, :String
  end
end
