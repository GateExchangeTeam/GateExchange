# frozen_string_literal: true

class PostsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def index
    @course = Course.find(params[:course_id])
    @id = params[:course_id]
    @posts = @course.posts.all.with_rich_text_content_and_embeds
  end

  def all
    @posts = Post.all.with_rich_text_content_and_embeds
    render 'posts/all'
  end

  def show
    @course_id = params[:course_id]
    @post_id = params[:id]
    @post = Course.find(params[:course_id]).posts.find(params[:id])
    @comments = @post.comments.all
    @comment = @post.comments.new
  end

  def new
    @id = params[:course_id]
    @course = Course.find(@id)
    @post = @course.posts.new # create a new post for this specific course
  end

  def create
    @post = Course.find(params[:course_id]).posts.new(create_params) # create a new post for this specific course
    @post.description = @post.content.to_plain_text.strip
    @post.view = 0
    if @post.save
      flash[:notice] = "Post #{@post.title} successfully created"
      redirect_to course_posts_path(params[:course_id])
    else
      flash[:warning] = "Post couldn't be created"
      # render 'new'
      redirect_to(new_course_post_path(params[:course_id]), alert: "Post couldn't be created") and return
    end
  end

  private

  def create_params
    params.require(:post).permit(:title, :content) # plus any other fields
  end

  def record_not_found
    flash[:alert] = 'No such post'
    redirect_to course_posts_path and return
  end
end
