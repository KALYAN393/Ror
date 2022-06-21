class Comment < ApplicationRecord
  validates :description, length: { maximum: 100 }
  belongs_to :post
end
