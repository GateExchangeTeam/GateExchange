# frozen_string_literal: true

class AddPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :course, index: true
  end
end
