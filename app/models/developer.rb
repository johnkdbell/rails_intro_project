class Developer < ApplicationRecord
  has_many :games
  validates :name, presence: true, uniqueness: true

  paginates_per 8

  def games_list
    games.map { |game| game.name }.join
  end
end
