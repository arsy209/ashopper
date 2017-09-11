class Order < ApplicationRecord
  has_one :order_status
  belongs_to :user

  has_many :order_products,
  class_name: "OrderProduct",
  primary_key: :id,
  foreign_key: :order_id

  has_many :products, through: :order_products
end
