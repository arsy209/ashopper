class WatchedList < ApplicationRecord
  validates :user_id, presence: true

  belongs_to :user

  has_many :watched_products,
  class_name: "WatchedProductsList",
  primary_key: :id,
  foreign_key: :watched_list_id

  has_many :products, through: :watched_products
end
