# frozen_string_literal: true

class Rating < ApplicationRecord
  validates :up, comparison: { greater_than_or_equal_to: 0 }, allow_nil: false
  validates :down, comparison: { greater_than_or_equal_to: 0 }, allow_nil: false
  belongs_to :post, counter_cache: true
  belongs_to :comment, optional: true
end
