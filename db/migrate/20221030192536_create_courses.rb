class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :course_code
      t.text :description
      t.string :department
      t.string :faculty  

      t.timestamps
    end
  end
end
