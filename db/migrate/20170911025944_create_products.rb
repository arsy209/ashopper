class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :brief_description, null: false
      t. string :full_description, null: false
      t.integer :price, null: false
      t.integer :discount, default: 0
      t.boolean :on_sale, default: false

      t.timestamps, null: false
    end
    add_index :products, :title
  end
end
