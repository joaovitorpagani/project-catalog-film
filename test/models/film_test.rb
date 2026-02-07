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

class FilmTest < ActiveSupport::TestCase

  setup do
    @film = films(:pulp_fiction)
  end

  test "should create film" do
    film = Film.new(duration: 250, name: "test", rating: 5, realese_date: Date.today, synopsis: 'test')
    assert_difference "Film.count", 1 do
      assert film.valid?
      assert film.save!
    end
  end

  test 'shoult update film' do
    assert_no_difference "Film.count" do
      @film.name = "test"
      assert @film.valid?
      assert @film.save!
    end

    assert_equal @film.reload.name, "test"
  end

end
