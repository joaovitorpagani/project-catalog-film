# == Schema Information
#
# Table name: films
#
#  id           :bigint           not null, primary key
#  duration     :integer
#  name         :string
#  rating       :decimal(, )
#  realese_date :date
#  synopsis     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class FilmsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
