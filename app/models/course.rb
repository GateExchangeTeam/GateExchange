# frozen_string_literal: true

class Course < ApplicationRecord
  # TODO: Add Relations to other models
  has_many :posts
  has_many :comments, through: :posts
  validates :title, length: { minimum: 0 }, allow_nil: false
  validates :faculty, length: { minimum: 0 }, allow_nil: true
  validates :description, length: { minimum: 0 }, allow_nil: false
  validates :department, length: { minimum: 4, maximum: 4 }, allow_nil: false
  validates :course_code, comparison: { greater_than: 100, less_than: 500 }, allow_nil: false

  def generate_full_code
    "#{department} #{course_code}"
  end
end
