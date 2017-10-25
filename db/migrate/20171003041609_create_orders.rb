class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :Lastname
      t.string :artikel
      t.integer :artikelnr
      t.decimal :price
    end
  end
end
