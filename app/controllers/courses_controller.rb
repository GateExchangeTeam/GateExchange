class CoursesController < ApplicationController
    def index
        @courses = Course.all
        render 'index' 
    end    
end
