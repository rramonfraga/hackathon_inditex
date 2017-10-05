class Size < ApplicationRecord
  has_many :size_products
  has_many :products, through: :size_products
end
