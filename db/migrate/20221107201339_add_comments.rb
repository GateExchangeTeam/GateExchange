class AddComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :post, index: true
  end
end
