class Cart < ApplicationRecord
  validates :user_id, presence: true

  belongs_to :user

  has_many :cart_products,
  class_name: "CartProduct",
  primary_key: :id,
  foreign_key: :cart_id

  has_many :products, through: :cart_products 

end
