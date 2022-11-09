class CreateNestedComments < ActiveRecord::Migration[7.0]
  def change
    create_table :nested_comments do |t|
      t.string :text

      t.timestamps
    end
  end
end
