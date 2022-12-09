# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :text_body, length: { minimum: 5 }, allow_nil: false, presence: true
  has_many :ratings, as: :rateable
  belongs_to :commentable, polymorphic: true
  belongs_to :user
  has_many :comments, as: :commentable
end
