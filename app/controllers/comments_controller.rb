class CommentsController < ApplicationController

    def new
        @course_id = params[:course_id]
        @post_id = params[:post_id]
        @comment = Course.find(params[:course_id]).posts.find(params[:post_id]).comments.new
    end

    def create
      @course_id = params[:course_id]
      @post_id = params[:post_id]
        @comment = Course.find(params[:course_id]).posts.find(params[:post_id]).comments.create(create_params)
        if @comment.save
          flash[:notice] = "Reply sent"
          redirect_to course_post_path(params[:course_id], params[:post_id])
        else
          flash[:warning] = "error"
          render template: "comments/new"
        end
    end

    private
    def create_params
        params.require(:comment).permit(:text_body) # plus any other fields
    end

end

