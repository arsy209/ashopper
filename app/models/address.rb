class Address < ApplicationRecord
  has_one :state
  belongs_to :user
end
