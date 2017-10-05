class Product < ApplicationRecord
  belongs_to :collections

  has_many :sizes
  attribute :styles, :string, array: true
  attribute :tags, :string, array: true

  class << self
    def search_by(user, store_id, collection_id)
      where({
        store: store_id,
        collection_id: collection_id,
        gender: user.gender,
        sizes: user.size_ids,
        color: user.color,
        style: user.styles
      })
    end
  end
end
