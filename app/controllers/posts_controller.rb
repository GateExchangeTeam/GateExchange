# frozen_string_literal: true

class PostsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  before_action :creator_logged_in?, only: %i[edit update destroy]
  respond_to :js, :html, :json

  def like
    @post = Post.find(params[:id])
    case params[:format]
    when 'like'
      @post.liked_by current_user
    when 'unlike'
      @post.unliked_by current_user
    end
  end

  def dislike
    @post = Post.find(params[:id])
    case params[:format]
    when 'dislike'
      @post.disliked_by current_user
    when 'undislike'
      @post.undisliked_by current_user
    end
  end
  def index
    @course = Course.find(params[:course_id])
    @id = params[:course_id]
    @posts = @course.posts.all.with_rich_text_content_and_embeds
    @user = nil
    # Allow filtering only posts by the specified user
    unless params[:user].nil?
      @posts = @posts.where(user: User.find(params[:user]))
      @user = User.find(params[:user])
    end

    if params[:sort].nil?
      @posts = @posts.order("updated_at DESC")
    else
      sort = params[:sort]
      @posts = sort_posts(@posts, sort)
    end
  end

  def all
    @posts = Post.all.with_rich_text_content_and_embeds

    # Allow filtering only posts by the specified user
    unless params[:user].nil?
      @posts = @posts.where(user: User.find(params[:user]))
      @user = User.find(params[:user])
    end

    if params[:sort].nil?
      @posts = @posts.order("updated_at DESC")
    else
      sort = params[:sort]
      @posts = sort_posts(@posts, sort)
    end

    if !params[:search_input].nil?
      @posts = @posts.where("title like ?", "%"+ params[:search_input]+"%")
    end
    render 'posts/all'
  end

  def show
    @course_id = params[:course_id]
    @post_id = params[:id]
    @post = Course.find(params[:course_id]).posts.find(params[:id])
    if current_user == @post.user
      @allow_changes = true
    end
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
    @post.user = current_user
    if @post.save
      flash[:notice] = "Post #{@post.title} successfully created"
      redirect_to course_posts_path(params[:course_id])
    else
      flash[:warning] = "Post couldn't be created"
      redirect_to(new_course_post_path(params[:course_id]), alert: "Post couldn't be created") and return
    end
  end

  def edit
    @id = params[:course_id]
    @course = Course.find(@id)
    @post = @course.posts.find(params[:id])
  end

  def update
    @post = Course.find(params[:course_id]).posts.find(params[:id])

    if @post.update(update_params)
      @post.description = @post.content.to_plain_text.strip unless @post.content.nil?
      flash[:notice] = 'Post successfully updated'
      redirect_to course_post_path(params[:course_id], params[:id])
    else
      flash[:warning] = "Post couldn't be updated"
      redirect_to(edit_course_post_path(params[:course_id], params[:id]), alert: "Post couldn't be updated") and return
    end
  end

  def destroy
    @post = Course.find(params[:course_id]).posts.find(params[:id])
    @post.destroy
    flash[:notice] = 'Post successfully deleted'
    redirect_to course_posts_path(params[:course_id])
  end

  private

  def update_params
    params.require(:post).permit(:title, :content, :description)
  end

  def create_params
    params.require(:post).permit(:title, :content)
  end
  def creator_logged_in?
    @post = Course.find(params[:course_id]).posts.find(params[:id])
    return true if @post.user == current_user
    flash[:alert] = 'You are not the creator of this post'
    redirect_to course_post_path(params[:course_id], params[:id]) and return
  end
  def record_not_found
    flash[:alert] = 'No such post'
    redirect_to course_posts_path and return
  end

  def sort_posts(posts, sort)
    case sort
             when 'views'
               posts.order(view: :desc).with_rich_text_content_and_embeds
             when 'likes'
               Post.order(cached_votes_up: :desc).with_rich_text_content_and_embeds
             when 'dislikes'
               Post.order(cached_votes_down: :desc).with_rich_text_content_and_embeds
             else
               posts.left_joins(:comments).group(:id).order('COUNT(comments.id) DESC')
            end
  end
end
