
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
    click_on 'Ask a question'
    fill_in 'post[title]', with: 'Test title'
    find(:xpath, "//input[@id='description-title_trix_input_post']", :visible=>false).set "I have a question"
    click_on 'Submit'
  end

  it 'should successfully delete a post' do
    visit '/courses/1/posts/1'
    expect(page.current_path).to eq('/courses/1/posts/1')
    click_on 'Delete'
    expect(page).to have_no_content('Test title')
  end

  it 'should successfully delete a post' do
    visit '/courses/1/posts/1'
    expect(page.current_path).to eq('/courses/1/posts/1')
    click_on 'Delete'
    expect(page).to have_no_content('Test title')
  end


  it 'should handle failure to create a post gracefully' do
    click_on 'View details'
    find("#replyToggle").click
    fill_in 'comment[text_body]', with: 'This is a comment'
    find('#replySubmit').click
    expect(page.current_path).to eq('/courses/1/posts/1')
    expect(page).to have_content('Reply sent')
    expect(page).to have_content('This is a comment')
  end

end
