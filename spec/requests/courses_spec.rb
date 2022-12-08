# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Course Index paths', type: :request do
  include Devise::Test::IntegrationHelpers

  it 'should correctly route for the index view' do
    @user = User.create!(email: 'admin@colgate.edu', password: 'Colgate13')
    sign_in @user
    get courses_path
    expect(response).to have_http_status(:ok)
  end
end
