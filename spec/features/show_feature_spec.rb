# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Landing Page', type: :feature do
  include Devise::Test::IntegrationHelpers

  it 'should display landing page if signed in' do
    @user = User.create!(email: 'admin@colgate.edu', password: 'Colgate13')
    sign_in @user
    visit root_path
    expect(page).to have_content('Take a look')
  end

  it 'should reroute to sign-in if not signed in' do
    visit root_path
    expect(page).to have_content('Remember me')
  end
end

RSpec.describe 'show feature', type: :feature do
  include Devise::Test::IntegrationHelpers

  before :each do
    Course.delete_all

    Course.create!(title: 'My favorite class', course_code: '300', description: 'Awesome class!', department: 'CHIN',
                   faculty: 'Joyce')
    Course.create!(title: 'Geography of Happiness', course_code: '350', description: 'Be happy', department: 'GEOL',
                   faculty: 'Joyce')
    Tag.create!(tag_name: 'academics')
    User.create!(email: 'jzhang4@colgate.edu', password: 'testtest')
    p1 = Post.create!(title: 'how to do homework 1',
                 description: 'I have the following file /app/validators/hex_color.rb in my Rails app but I got an error', view: 0, course_id: 1)
    p2 = Post.create!(title: 'grading', description: 'the professor is a easy grader', view: 0, course_id: 1)
    p1.comments.create!(text_body: 'i also have question on hw1')
    p2.comments.create!(text_body: 'no, not a easy grader')
    @user = User.create!(email: 'admin@colgate.edu', password: 'Colgate13')
    sign_in @user
    visit '/courses'
  end

  it "should have links from each course name to 'show' pages" do
    expect(page).to have_link('My favorite class')
    expect(page).to have_link('Geography of Happiness')
  end

  it 'show link for course should show details for the course and its related posts title and description' do
    click_link('My favorite class')
    expect(page).to have_link('Ask a question')
    expect(page).to have_content('how to do homework 1')
    expect(page).to have_link('View details', href: '/courses/1/posts/1')
    expect(page).to have_content('I have the following fil')
    expect(page).to have_content('grading')
    expect(page).to have_link('View details', href: '/courses/1/posts/2')
    # expect(page).to have_content('the professor is ')
    # show more details of the course itself
    # expect(page).to have_content("time")
    # expect(page).to have_content("location")
    # expect(page).to have_content("faculty")
  end

  it 'show link for post should show a list of comments' do
    click_link('My favorite class')
    click_link('View details', href: '/courses/1/posts/1')
    # expect(page).to have_content("Comments for this question")

    # expect(page).to have_link("Leave your comment")
    expect(page).to have_content('i also have question on hw1')
    expect(page).not_to have_content('no, not a easy grader')
  end

  it 'sorting posts should work correctly' do
    # to do
    expect(page).to have_content("do this test")
  end

  it 'sorting comments should work correctly' do
    # to do
    expect(page).to have_content("do this test")
  end
end
