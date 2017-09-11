class CreateWatchedProductsLists < ActiveRecord::Migration[5.1]
  def change
    create_table :watched_products_lists do |t|
      t.integer :product_id, null: false
      t.integer :prodcut_id, null: false

      t.timestamps null: false
    end
  end
end
