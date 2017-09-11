class ProductPicture < ApplicationRecord
  belongs_to :product

  has_attached_file :image, styles: { large: "500x500>", medium: "250x250>", thumb: "75x75>" }, default_url: "no_image.gif"
  do_not_validate_attachment_file_type :image
end
