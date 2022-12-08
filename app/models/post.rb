# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :course
  has_many :comments, as: :commentable
  has_many :ratings, as: :rateable
  has_rich_text :content
  validates :title, length: { minimum: 1 }, presence: true
  validates :description, length: { minimum: 1 }, presence: true
end
