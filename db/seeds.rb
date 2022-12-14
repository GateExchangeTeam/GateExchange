# frozen_string_literal: true
require 'faker'

courses = [
  {
    title: 'Software Engineering',
    course_code: '415',
    description: 'Awesome comp sci course!',
    department: 'COSC',
    faculty: 'Sommers'
  },
  {
    title: 'Intro to Computing',
    course_code: '101',
    description: 'Awesome intro course!',
    department: 'COSC',
    faculty: 'multiple'
  },
  {
    title: 'Legacies',
    course_code: '151',
    description: 'Mandatory core course',
    department: 'CORE',
    faculty: 'Frank'
  },
  {
    title: 'Microeconomics',
    course_code: '251',
    description: 'Required Econ course',
    department: 'ECON',
    faculty: 'Haines'
  },
  {
    title: 'Is the Planet Doomed?',
    course_code: '107',
    description: 'Fun Geography course',
    department: 'GEOG',
    faculty: 'Hamlin'
  },
  {
    title: 'Modern South Asia',
    course_code: '269',
    description: 'Interesting history class',
    department: 'HIST',
    faculty: 'Begum'
  },
  {
    title: 'Sociology of Disasters',
    course_code: '304',
    description: 'Cool sociology course',
    department: 'SOCI',
    faculty: 'Villarrubia'
  },
  {
    title: 'Gadgets and Gizmos',
    course_code: '203',
    description: 'Another awesome comp sci class',
    department: 'COSC',
    faculty: 'Apthorpe and Sommers'
  }
]

Course.delete_all
Post.delete_all
Comment.delete_all
User.delete_all

Course.create!(courses)

user_list = []
user_list << User.create!(:email => "user1@colgate.edu", :password => "user1@colgate.edu")
user_list << User.create!(:email => "user2@colgate.edu", :password => "user2pass")
user_list << User.create!(:email => "user3@colgate.edu", :password => "user3pass")

# Give each course a random sample of posts from random users
Course.all.each do |course|
  rand(5..10).times do
    course.posts.create!(:user => user_list.sample, :title => Faker::Lorem.sentence, :description => Faker::Lorem.paragraph, :view=>rand(0..100))
  end
end

# Randomly sprinkle in some comments
50.times do
  Post.all.sample.comments.create!(:text_body => Faker::Lorem.paragraph, :user => user_list.sample)
  Comment.all.sample.comments.create!(:text_body => Faker::Lorem.paragraph, :user => user_list.sample)
end


# Randomly rate posts
User.all.each do |user|
  10.times do
    Post.all.sample.liked_by user
    Post.all.sample.disliked_by user
  end
end

# Randomly rate comments
User.all.each do |user|
  10.times do
    Comment.all.sample.liked_by user
    Comment.all.sample.disliked_by user
  end
end
