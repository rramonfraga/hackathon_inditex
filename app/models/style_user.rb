class StyleUser < ApplicationRecord
  belongs_to :style
  belongs_to :user
end
