class AddRattingsCountToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :ratings_count, :integer
  end
end
