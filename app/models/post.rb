# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :tags
  has_many :comments
  has_many :ratings
end
