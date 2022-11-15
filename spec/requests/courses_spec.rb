# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Course Index paths", type: :request do
  it "should correctly route for the index view" do
    get courses_path
    expect(response).to have_http_status(:ok)
  end
end