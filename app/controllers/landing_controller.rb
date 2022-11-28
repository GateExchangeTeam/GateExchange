# frozen_string_literal: true

class LandingController < ApplicationController
  def index
    render 'index', layout: false
  end
end
