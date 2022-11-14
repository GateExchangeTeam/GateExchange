# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Course.delete_all

c = Course.create!(title: 'Software Engineering', course_code: '415', description: 'Awesome comp sci course!',
                   department: 'COSC', faculty: 'Sommers')
c1 = Course.create!(title: 'Intro to Computing', course_code: '101', description: 'Awesome intro course!', department: 'COSC',
                    faculty: 'multiple')
Course.create!(title: 'Legacies', course_code: '151', description: 'Mandatory core course', department: 'CORE',
               faculty: 'Frank')
Course.create!(title: 'Microeconomics', course_code: '251', description: 'Required Econ course', department: 'ECON',
               faculty: 'Haines')
Course.create!(title: 'Is the Planet Doomed?', course_code: '107', description: 'Fun Geography course', department: 'GEOG',
               faculty: 'Hamlin')

Post.delete_all

p1 = c.posts.create!(title: 'uninitialized constant when including validator',
                description: 'I have the following file /app/validators/hex_color.rb in my Rails app but I got an error', view: 0)
p2 = c.posts.create!(title: 'Rotating an image using cImage',
                description: "I'm trying to rotate an image in Python by 90 degrees using cImage (and only cImage) and here's what I've got so far.", view: 0)
p3 = c.posts.create!(title: 'Prefix number with + if it is positive - Ruby / Rails 4',
                description: 'I am wondering what the conventional Rails way AND Ruby way is to prepend a  sybmol to a number if it is positive.', view: 0)
p4 = c.posts.create!(title: 'Sort hash by key, return hash in Ruby',
                description: 'Would this be the best way to sort a hash and return Hash object (instead of Array):', view: 0)
p5 = c1.posts.create!(title: 'How to check if a value exists in an array in Ruby',
                 description: "I have a value 'Dog' and an array ['Cat', 'Dog', 'Bird'].", view: 0)
p6 = c1.posts.create!(title: 'Navbar fixed on the top of HTML page (CSS / HTML)',
                 description: "I'm trying to learn some of CSS3 and HTML5 but I'm a little confused with somethings. For now, I want create a page with a fixed navbar on the top of page, that scrolls with the page.", view: 0)

p1.comments.create!(text_body: "This might fix your problem")
p1.comments.create!(text_body: "I have the same issue")
p1.comments.create!(text_body: "Waiting here for someone to fix this issue")
p1.comments.create!(text_body: "Try this solution: ........")