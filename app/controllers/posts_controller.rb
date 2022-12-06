# frozen_string_literal: true

class PostsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  def index
    @course = Course.find(params[:course_id])
    @id = params[:course_id]

    if !params[:sort].nil?
      sort = params[:sort]
      @posts = case sort
               when 'views'
                 @course.posts.order(view: :desc).with_rich_text_content_and_embeds
               when 'likes'
                 @course.posts.all.left_joins(:ratings).group(:id).order('SUM(ratings.up) DESC')
               when 'dislikes'
                 @course.posts.all.left_joins(:ratings).group(:id).order('SUM(ratings.down) DESC')
               else
                 @course.posts.all.left_joins(:comments).group(:id).order('COUNT(comments.id) DESC')
               end
    else
      @posts = @course.posts.all.with_rich_text_content_and_embeds
    end
  end

  def all
    if !params[:sort].nil?
      sort = params[:sort]
      @posts = case sort
               when 'views'
                 Post.order(view: :desc).with_rich_text_content_and_embeds
               when 'likes'
                 Post.all.left_joins(:ratings).group(:id).order('SUM(ratings.up) DESC')
               when 'dislikes'
                 Post.all.left_joins(:ratings).group(:id).order('SUM(ratings.down) DESC')
               else
                 Post.all.left_joins(:comments).group(:id).order('COUNT(comments.id) DESC')
               end
    else
      @posts = Post.all.with_rich_text_content_and_embeds
    end
    render 'posts/all'
  end

  def show
    @course_id = params[:course_id]
    @post_id = params[:id]
    @post = Course.find(params[:course_id]).posts.find(params[:id])
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
      redirect_to(new_course_post_path(params[:course_id]), alert: "Post couldn't be created") and return
    end
  end

  def comments_count(commentable)
    count = commentable.comments.count
    if commentable.comments.count.positive?
      commentable.comments.each do |comment|
        count += comments_count(comment)
      end
    end
    count
  end
  helper_method :comments_count
  def sort_comments(commentable)
    if !params[:sort].nil?
      sort = params[:sort]
      @comments = case sort
                  when 'likes'
                    commentable.comments.all.left_joins(:ratings).group(:id).order('SUM(ratings.up) DESC')
                  when 'dislikes'
                    commentable.comments.all.left_joins(:ratings).group(:id).order('SUM(ratings.down) DESC')
                  when 'newest'
                    commentable.comments.all.all.order('created_at DESC')
                  else
                    commentable.comments.all
                  end
    else
      @comments = commentable.comments.all
    end
  end
  helper_method :sort_comments

  private

  def create_params
    params.require(:post).permit(:title, :content) # plus any other fields
  end

  def record_not_found
    flash[:alert] = 'No such post'
    redirect_to course_posts_path and return
  end
end
