require 'rails_helper'

RSpec.describe "create post", type: :feature do
  before :each do
    Course.delete_all
    @course= Course.create!(title:"Intro to Computing",course_code:"101",description:"Awesome intro course!",department:"COSC",faculty:"multiple")
    visit "/courses/1/posts"
  end

  it 'should successfully create a post' do
    click_on 'Ask a Question'
    fill_in 'post[title]', with: 'Test title'
    fill_in 'post[description]', with: 'Test i have a question'
    click_on 'Submit'
    expect(page.current_path).to eq("/courses/1/posts")
    expect(page).to have_content('Post Test title successfully created')
    expect(page).to have_content('Test title')
  end



  it 'should handle failure to create a product gracefully' do
    click_on 'Ask a Question'
    fill_in 'post[title]', with: ''
    fill_in 'post[description]', with: ''

    p = Post.new
    # expect(p).to receive(:save) { nil }
    allow(Post).to receive(:new) { p }
    expect(page.current_path).to eq("/courses/1/posts/new")
    # expect(page).to have_content("Post couldn't be created")
    expect(page).not_to have_content("successfully created")
  end

end