class Event < ApplicationRecord
  belongs_to :store
  belongs_to :product
  belogs_to :user
end
