# frozen_string_literal: true

class AddNestedComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :nested_comments, :comment, index: true
  end
end
