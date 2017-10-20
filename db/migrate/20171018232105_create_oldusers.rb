class CreateOldusers < ActiveRecord::Migration[5.1]
  def change
    create_table :oldusers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
