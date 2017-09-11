class CreateBigBanners < ActiveRecord::Migration[5.1]
  def change
    create_table :big_banners do |t|
      t.attachment :image

      t.timestamps null: false
    end
  end
end
