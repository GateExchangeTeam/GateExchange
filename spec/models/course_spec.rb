require 'rails_helper'

RSpec.describe Course, type: :model do
  context "the generate_full_code method" do
    it "should generate full code by combining department and course code" do
      c = Course.new(:title => 'Software Engineering', :description => 'Great class', :department => 'COSC',:course_code => 415 )
      expect(c.generate_full_code).to eq('COSC415')
    end
  end
end
