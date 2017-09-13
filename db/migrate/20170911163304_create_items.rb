class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.text :long_description
      t.decimal :price
      t.integer :inventory_status, default: 0

      t.timestamps null: false
    end
  end
end
