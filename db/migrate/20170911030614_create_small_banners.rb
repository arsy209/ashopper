class CreateSmallBanners < ActiveRecord::Migration[5.1]
  def change
    create_table :small_banners do |t|
      t.attachment :image

      t.timestamps null: false
    end
  end
end
