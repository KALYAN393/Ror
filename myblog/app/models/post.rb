class Post < ApplicationRecord
  validates :title, :body, :status, presence: true
  validates :title, length: { maximum: 50 }   

  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags
end
