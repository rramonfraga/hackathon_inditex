class Tag < ApplicationRecord
  has_many :products
  has_many :products, through: :tag_products
end
