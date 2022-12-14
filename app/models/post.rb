# frozen_string_literal: true

class Post < ApplicationRecord
  acts_as_votable
  belongs_to :course
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  has_rich_text :content
  validates :title, length: { minimum: 1 }, presence: true
  validates :description, length: { minimum: 1 }, presence: true
end
