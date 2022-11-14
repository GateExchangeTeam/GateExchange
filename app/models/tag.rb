# frozen_string_literal: true

class Tag < ApplicationRecord
  validates :tag_name, presence: true, allow_nil: false
  has_and_belongs_to_many :posts
end
