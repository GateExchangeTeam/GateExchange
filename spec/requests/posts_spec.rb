# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Post Index paths', type: :request do
  include Devise::Test::IntegrationHelpers

  before :each do
    Course.delete_all
    Post.delete_all
    @course = Course.create!(title: 'Intro to Computing', course_code: '101', description: 'Awesome intro course!',
                             department: 'COSC', faculty: 'multiple')
    @course.posts.create!(title: 'This is a post', description: 'Hello this is a test post', view: 0)
    @user = User.create!(email: 'admin@colgate.edu', password: 'Colgate13')
    sign_in @user
  end

  it 'should correctly route for the index view' do
    get course_posts_path(@course.id)
    expect(response).to have_http_status(:ok)
  end

  it 'should correctly route for the all posts view' do
    get posts_path
    expect(response).to have_http_status(:ok)
  end

  it 'should correctly route for the show view' do
    get course_post_path('1', '1')
    expect(response).to have_http_status(:ok)
  end

  it "should correctly handle bad id's for the show view" do
    # expect(Course.find("1").posts).to receive(:find).with("2").and_raise(ActiveRecord::RecordNotFound)
    get course_post_path('1', '2')
    expect(response).to have_http_status(:redirect)
  end
end
