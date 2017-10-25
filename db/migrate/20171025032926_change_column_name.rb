class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    change_table :orders do |t|
      t.rename :artikelnr, :description
    
    end
  end
end
