class Comment < ApplicationRecord
  validates :text_body
  belongs_to :post
  has_many :ratings
  has_many :nested_comments
end
