class Product < ApplicationRecord
  belongs_to :collections

  has_many :tags
  has_many :tags, through: :tag_products

  has_many :stores
  has_many :stores, through: :store_products

  has_many :size
  has_many :size, through: :size_products

  has_many :style_products
  has_many :style, through: :style_products

  class << self
    def search_by(store_id, collection_id, user)
      where({
        store: store_id,
        collection_id: collection_id,
        gender: user.gender,
        sizes: user.size_ids,
        color: user.color,
        style: user.style_ids
      })
    end
  end
end
