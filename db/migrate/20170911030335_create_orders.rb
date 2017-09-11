class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id, null: false
      t.integer :status_id, null: false

      t.timestamps null: false
    end
  end
end
