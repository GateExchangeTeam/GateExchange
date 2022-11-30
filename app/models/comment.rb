# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :text_body, length: { minimum: 5 }, allow_nil: false, presence: true
  belongs_to :post, counter_cache: true
  has_many :ratings
  has_many :nested_comments
end
