# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Comments Path', type: :request do
  before :each do
    Course.delete_all
    Post.delete_all
    @course = Course.create!(title: 'Intro to Computing', course_code: '101', description: 'Awesome intro course!',
                             department: 'COSC', faculty: 'multiple')
    @post = @course.posts.create!(title: 'This is a post', description: 'Hello this is a test post', view: 0)
    @post.comments.create!(text_body: 'This is a comment')
  end
end
