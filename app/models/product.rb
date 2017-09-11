class Product < ApplicationRecord
  belongs_to :category

  has_many :watched_products_lists,
  class_name: "WatchedProductsList",
  primary_key: :id,
  foreign_key: :product_id

  has_many :cart_products,
  class_name: "CartProduct",
  primary_key: :id,
  foreign_key: :product_id

  has_many :carts, through: :cart_products
  has_many :watched_lists, through: :watched_products_lists

  has_many :order_products,
  class_name: "OrderProduct",
  primary_key: :id,
  foreign_key: :product_id

  has_many :orders, through: :order_products

  has_many :product_pictures

  has_one :frequently_bought_together
  has_many :bought_together, through: :frequently_bought_together, source: :products

  has_many :bought_together_products,
  class_name: "FrequentlyBoughtProduct",
  primary_key: :id,
foreign_key: :product_id
end
