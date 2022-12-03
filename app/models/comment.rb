# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :text_body, length: { minimum: 5 }, allow_nil: false, presence: true
  has_many :ratings
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
end
