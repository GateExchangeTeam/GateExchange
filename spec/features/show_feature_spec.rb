require 'rails_helper'

RSpec.describe "index page", type: :feature do
  before :each do
    Course.delete_all

    Course.create!(title:"My favorite class",course_code:"300",description:"Awesome class!",department:"CHIN",faculty:"Joyce")
    Course.create!(title:"Geography of Happiness",course_code:"350",description:"Be happy",department:"GEOL",faculty:"Joyce")
    Tag.create!(tag_name:"academics")
    User.create!(:name => "itsjoyce", :email => 'jzhang4@colgate.edu', :passcode => 'testtest')
    Post.create!(title:"how to do homework 1", description:"I have the following file /app/validators/hex_color.rb in my Rails app but I got an error", view: 0, :course_id => 1)
    Post.create!(title:"grading", description:"the professor is a easy grader", view: 0, :course_id => 1)
    Comment.create!(text_body:"i also have question on hw1", :post_id => 1)
    Comment.create!(text_body:"no, not a easy grader", :post_id => 2)
    visit "/courses"
  end

  it "should have links from each course name to 'show' pages" do
    expect(page).to have_link("My favorite class")
    expect(page).to have_link("Geography of Happiness")
  end

  it "show link for course should show details for the course and its related posts title and description" do
    click_link("My favorite class")
    expect(page).to have_link("Ask a question")
    expect(page).to have_content("how to do homework 1")
    expect(page).to have_link("View details", href: '/courses/1/posts/1')
    expect(page).to have_content('I have the following fil')
    expect(page).to have_content("grading")
    expect(page).to have_link("View details", href: '/courses/1/posts/2')
    # expect(page).to have_content('the professor is ')
    # show more details of the course itself
    # expect(page).to have_content("time")
    # expect(page).to have_content("location")
    # expect(page).to have_content("faculty")
  end

  it "show link for post should show a list of comments" do
    click_link("My favorite class")
    click_link("View details", href: '/courses/1/posts/1')
    # expect(page).to have_content("Comments for this question")

    # expect(page).to have_link("Leave your comment")
    expect(page).to have_content("i also have question on hw1")
    expect(page).not_to have_content("no, not a easy grader")
  end
end