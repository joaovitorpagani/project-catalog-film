# == Schema Information
#
# Table name: film_genres
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  film_id    :bigint           not null
#  genre_id   :bigint           not null
#
# Indexes
#
#  index_film_genres_on_film_id   (film_id)
#  index_film_genres_on_genre_id  (genre_id)
#
# Foreign Keys
#
#  fk_rails_18d0ace0ad  (film_id => films.id)
#  fk_rails_e7bab1bb99  (genre_id => genres.id)
#
require "test_helper"

class FilmGenreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
