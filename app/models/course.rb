class Course < ApplicationRecord
    #TODO: Add Relations to other models 

    validates :title, length: { minimum: 0}, allow_nil: false
    validates :faculty, length: { minimum: 0}, allow_nil: true
    validates :description, length: { minimum: 0}, allow_nil: false 
    validates :department, length: { minimum: 4, maximum: 4}, allow_nil: false
    validates :course_code, comparison: { greater_than: 100, less_than: 500}, allow_nil: false

    def generate_full_code()
        return self.department + (self.course_code).to_s
    end 

end
