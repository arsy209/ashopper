class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :state, null: false

      t.timestamps, null: false
    end
  end
end
