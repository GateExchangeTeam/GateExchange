# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    order = 'title'
    c = Course.find(params[:course_id])
    @course = c
    @id = params[:course_id]
    @posts = c.posts
  end

  def show
    @course_id = params[:course_id]
    @post_id = params[:id]
    @post = Course.find(params[:course_id]).posts.find(params[:id])
    @comments = @post.comments.all
  end

  def new
    @id = params[:course_id]
    @post = Course.find(params[:course_id]).posts.new # create a new post for this specific course
  end

  def create
    @post = Course.find(params[:course_id]).posts.create(create_params) # create a new post for this specific course
    if @post.save
      flash[:notice] = "Post #{@post.title} successfully created"
      redirect_to course_posts_path(params[:course_id])
    else
      flash[:warning] = "Post couldn't be created"
      render 'new'
    end
  end

  private

  def create_params
    params.require(:post).permit(:title, :description) # plus any other fields
  end
end
