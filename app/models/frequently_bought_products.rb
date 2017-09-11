class FrequentlyBoughtProducts < ApplicationRecord
  belongs_to :frequently_bought_together
  belongs_to :product
end
