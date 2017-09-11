class FrequentlyBoughtTogether < ApplicationRecord
  belongs_to :product

  has_many :bought_together_products,
  class_name: "FrequentlyBoughtProduct",
  primary_key: :id,
  foreign_key: :frequently_bought_together_id

  has_many :products, through: :bought_together_products
end
