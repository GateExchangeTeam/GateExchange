# frozen_string_literal: true

class CoursesController < ApplicationController
  def index
    @courses = Course.all
    render 'index'
  end
end
