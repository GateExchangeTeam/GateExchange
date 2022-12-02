class RepliesController < ApplicationController
  before_action :find_thread
  def create
    @course_id = params[:course_id]
    @post_id = params[:post_id]
    @reply = @thread.replies.new(create_params)
    if @reply.save
      flash[:notice] = 'Reply sent'
      redirect_to course_post_path(params[:course_id], params[:post_id])
    else
      flash[:warning] = "Comment couldn't be created"
      redirect_to(course_post_path(params[:course_id], params[:post_id]), alert: "Post couldn't be created") and return
    end
  end

  private

  def create_params
    params.require(:reply).permit(:body)
  end

  def find_thread
    @thread = Reply.find_by_id(params[:reply_id]) if params[:reply_id]
    @thread = Post.find_by_id(params[:post_id]) if params[:post_id]
  end

end
