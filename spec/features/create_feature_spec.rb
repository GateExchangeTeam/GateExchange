# frozen_string_literal: true

require 'rails_helper'
require 'capybara/dsl'
require 'selenium-webdriver'

RSpec.describe 'create post', type: :feature do
  include Devise::Test::IntegrationHelpers

  before :each do
    Course.delete_all
    Post.delete_all
    @course = Course.create!(title: 'Intro to Computing', course_code: '101', description: 'Awesome intro course!',
                             department: 'COSC', faculty: 'multiple')
    @user = User.create!(email: 'admin@colgate.edu', password: 'Colgate13')
    sign_in @user
    visit '/courses/1/posts'
  end

  it 'should successfully create a post' do
    click_on 'Ask a question'
    fill_in 'post[title]', with: 'Test title'
    find(:xpath, "//input[@id='description-title_trix_input_post']", :visible=>false).set "I have a question"
    click_on 'Submit'
    expect(page.current_path).to eq('/courses/1/posts')
    expect(page).to have_content('Post Test title successfully created')
    expect(page).to have_content('Test title')
  end

  it 'should handle failure to create a post gracefully' do
    click_on 'Ask a question'
    fill_in 'post[title]', with: ''
    find(:xpath, "//input[@id='description-title_trix_input_post']", :visible=>false).set ''
    click_on 'Submit'

    # p = @course.posts.new
    # expect(p).to receive(:save) { nil }
    # allow(Post).to receive(:new) { p }
    expect(page.current_path).to eq('/courses/1/posts/new')
    # expect(page).to have_content("Post couldn't be created")
    expect(page).to have_content("Post couldn't be created")
  end

  it 'should go back to courses if clicks the button' do
    click_on 'Ask a question'
    click_on 'Back to posts'

    expect(page.current_path).to eq('/courses/1/posts')
  end
end

RSpec.describe 'create comment', type: :feature do
  include Devise::Test::IntegrationHelpers

  before :each do
    Course.delete_all
    @course = Course.create!(title: 'Intro to Computing', course_code: '101', description: 'Awesome intro course!',
                             department: 'COSC', faculty: 'multiple')
    @post = @course.posts.create!(title: 'This is a post', description: 'Hello this is a test post', view: 0)
    @user = User.create!(email: 'admin@colgate.edu', password: 'Colgate13')
    sign_in @user
    visit '/courses/1/posts'
  end

  it 'should successfully create a comment' do
    click_on 'View details'
    find("#replyToggle").click
    fill_in 'comment[text_body]', with: 'This is a comment'
    find('#replySubmit').click
    expect(page.current_path).to eq('/courses/1/posts/1')
    expect(page).to have_content('Reply sent')
    expect(page).to have_content('This is a comment')
  end

  it 'should handle failure to create a comment gracefully' do
    click_on 'View details'
    find("#replyToggle").click
    fill_in 'comment[text_body]', with: ''
    find('#replySubmit').click

    # p = @course.posts.new
    # expect(p).to receive(:save) { nil }
    # allow(Post).to receive(:new) { p }
    expect(page.current_path).to eq('/courses/1/posts/1')
    # expect(page).to have_content("Post couldn't be created")
    expect(page).to have_content("Comment couldn't be created")
  end

  it 'should successfully create a nested comment' do
    # to do
    expect(page).to have_content("do this test")
  end
end
