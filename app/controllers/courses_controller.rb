# frozen_string_literal: true

class CoursesController < ApplicationController
  def index
    @courses = Course.all

    @num_views = 0
    @courses.each { |c| @num_views += c.posts.sum(:view) }

    @num_posts = 0
    @courses.each { |c| @num_posts += c.posts.count }

    @num_comments = 0
    @courses.each { |c| @num_comments += c.comments.count }

    @animate = params.key? 'animate'

    render 'index'
  end
end
