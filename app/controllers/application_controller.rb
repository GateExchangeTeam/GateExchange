# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def current_controller?(names)
    names.include?(current_controller)
  end
end
