class CreatePostsTags < ActiveRecord::Migration[7.0]
  def change
    create_table 'posts_tags', :id => false do |t| 
      t.references 'posts'
      t.references 'tags'
    end
  end
end
