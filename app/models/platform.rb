class Platform < ApplicationRecord
  has_many :game_platforms
  has_many :platforms, through: :game_platforms
end
