class Product < ApplicationRecord
  belongs_to :collections

  has_many :tags
  has_many :tags, through: :tag_products

  has_many :stores
  has_many :stores, through: :store_products
end
