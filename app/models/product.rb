class Product < ApplicationRecord
  belongs_to :collections

  attribute :size_ids, :string, array: true
  attribute :styles, :string, array: true
  attribute :tags, :string, array: true

  class << self
    def search_by(store_id, collection_id, user)
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
