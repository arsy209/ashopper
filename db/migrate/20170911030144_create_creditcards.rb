class CreateCreditcards < ActiveRecord::Migration[5.1]
  def change
    create_table :creditcards do |t|
      t.string :network, null: false

      t.timestamps, null: false
    end
  end
end
