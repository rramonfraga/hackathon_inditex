class Size < ApplicationRecord
  has_many :size_products
  has_many :products, through: :size_products

  has_many :size_users
  has_many :users, through: :size_users
end
