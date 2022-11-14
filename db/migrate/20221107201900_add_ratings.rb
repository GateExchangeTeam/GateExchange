# frozen_string_literal: true

class AddRatings < ActiveRecord::Migration[7.0]
  def change
    add_reference :ratings, :post, index: true
    add_reference :ratings, :comment, index: true
  end
end
