class WatchedProductsList < ApplicationRecord
  belongs_to :product,
  class_name: "Product",
  primary_key: :id,
  foreign_key: :product_id

  belongs_to :watched_list,
  class_name: "WatchedList",
  primary_key: :id,
  foreign_key: :watched_list_id
end
