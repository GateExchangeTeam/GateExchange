# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :course
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :ratings, as: :rateable, dependent: :destroy
  has_rich_text :content
  validates :title, length: { minimum: 1 }, presence: true
  validates :description, length: { minimum: 1 }, presence: true
end
