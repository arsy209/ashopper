class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.string :description

      t.timestamps, null: false
    end
  end
end
