class Product < ApplicationRecord
  with_options presence: true do
   validates :name
   validates :description
   validates :price
   validates :stock
 end
 has_one_attached :image
 scope :price_high_to_low, -> { order(price: :desc) }
 scope :price_low_to_high, -> { order(price: :asc) }
end
