class CreateReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :replies do |t|
      t.text :body
      t.integer :thread_id
      t.string :thread_type

      t.timestamps
    end
  end
end
