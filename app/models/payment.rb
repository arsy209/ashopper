class Payment < ApplicationRecord
  belongs_to :network
  belongs_to :user
end
