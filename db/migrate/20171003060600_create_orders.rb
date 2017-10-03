class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :lastname
      t.string :artnr
      t.text :description
    end
  end
end
