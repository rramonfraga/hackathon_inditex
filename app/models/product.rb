class Product < ApplicationRecord
  belongs_to :collections

  has_many :tags
  has_many :tags, through: :tag_products

  has_many :stores
  has_many :stores, through: :store_products

  has_many :size
  has_many :size, through: :size_products


  class << self
    def search_by(store_id, collection_id, user)
      where({
        store: store_id,
        collection_id: collection_id,
        gender: user.gender,
        size: user.size_id,
        color: user.color
      })
    end
  end
end
