class CreateProductPictures < ActiveRecord::Migration[5.1]
  def change
    create_table :product_pictures do |t|
      t.integer :product_id, null: false
      t.attachment :image

      t.timestamps null: false
    end
  end
end
