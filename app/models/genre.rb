class Genre < ApplicationRecord
  has_many :game_genres
  has_many :genres, through: :game_genres

end
