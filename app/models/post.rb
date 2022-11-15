# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :tags
  has_many :comments
  has_many :ratings

  validates :title, length: { minimum: 1}
  validates :description, length: { minimum: 1}

end
