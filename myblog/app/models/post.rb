require "modules/wordcount"
require "modules/badword"

class Post < ApplicationRecord
  include Wordcount
  include Badword
  validates :title, :body, :status, presence: true
  validates :title, length: { maximum: 50 }   
  validates :body, length: { maximum: 200 }
  # validates :body, is_bad: false

  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags
  has_many :comments , dependent: :destroy

  STATUS = ["draft" , "publish","archive"]
  scope :published, ->  { where(status: "publish") }
  # def self.published
  #   Post.where(status: 0)
  # end
  # same as above
  scope :drafts, ->  { where(status: "draft") }
  scope :archives, ->  { where(status: "archive") }
  before_create :assign_status
  def assign_status
    self.status = "draft"
  end
  validate :active_customer, on: :create
  
  def active_customer

    puts " #{is_bad(self.body)} checking for bad"
     errors.add(:title, "contains bad word") if is_bad(self.body)
   end

end
