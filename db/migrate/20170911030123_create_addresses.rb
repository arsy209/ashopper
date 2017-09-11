class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.integer :user_id, null: false
      t.string :street, null: false
      t.string :street2
      t.string :city, null: false
      t.integer :state_id
      t.integer :zip, null: false


      t.timestamps null: false
    end
  end
end
