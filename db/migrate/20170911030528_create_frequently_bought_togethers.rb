class CreateFrequentlyBoughtTogethers < ActiveRecord::Migration[5.1]
  def change
    create_table :frequently_bought_togethers do |t|
      t.integer :product_id, null: false

      t.timestamps null: false
    end
  end
end
