class Item < ApplicationRecord
  has_attached_file :image
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  belongs_to :category
  has_many :order_items
  has_many :orders, through: :order_items

  validates :title, :description, :price,
            :inventory_status, :image, presence: true
  validates :title, uniqueness: true

  enum inventory_status: ["in-stock", "out-of-stock", "retired"]

  def self.retired?
    self.inventory_status == 'retired' ? true : false
  end

  def self.search(search)
    query = search.downcase
    where("LOWER(title) LIKE ? OR LOWER(description) LIKE ?", "%#{query}%", "%#{query}%")
  end
end
