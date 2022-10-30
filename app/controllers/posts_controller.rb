class PostsController < ApplicationController
    def index
        order = 'title'
        @posts = Post.all
    end 
  end
