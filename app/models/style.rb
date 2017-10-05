class Style < ApplicationRecord
  has_many :style_users
  has_many :users, through: :style_users

  has_many :style_products
  has_many :product, through: :style_products
end
