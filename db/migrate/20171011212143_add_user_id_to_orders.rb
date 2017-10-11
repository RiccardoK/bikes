class AddUserIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :user_id, :integer
    add_index :orders, :user_id
    add_column :orders, :total, :string
    add_column :orders, :float, :string
  end
end
