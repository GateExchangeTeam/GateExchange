# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :find_commentable
  before_action :authenticate_user!
  def create
    @course_id = params[:course_id]
    @post_id = params[:post_id]
    @commentable = @commentable.comments.new(create_params)
    @commentable.user = current_user

    if @commentable.save
      flash[:notice] = 'Reply sent'
      redirect_to course_post_path(params[:course_id], params[:post_id])
    else
      flash[:warning] = "Comment couldn't be created"
      # render 'new'
      redirect_to(course_post_path(params[:course_id], params[:post_id]),
                  alert: "Post couldn't be created") and return
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment.update(create_params)
      flash[:notice] = "Comment successfully updated"
    else
      flash[:warning] = "You can't update this comment"
    end
    redirect_to course_post_path(params[:course_id], params[:post_id])
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    if @comment.user == current_user
      flash[:notice] = "Comment successfully deleted"
      @comment.destroy
    else
      flash[:warning] = "You can't delete this comment"
    end

    redirect_to course_post_path(params[:course_id], params[:post_id])
  end

  private

  def create_params
    params.require(:comment).permit(:text_body)
  end

  def find_commentable
    @commentable = if params[:comment_id]
                     Comment.find(params[:comment_id])
                   else
                     Post.find(params[:post_id])
                   end
  end
end
