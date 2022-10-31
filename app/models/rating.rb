class Rating < ApplicationRecord
    validates :up, comparison: { :greater_than_or_equal_to: 0}, allow_nil: false
    validates :down, comparison: { :greater_than_or_equal_to: 0}, allow_nil: false
end
