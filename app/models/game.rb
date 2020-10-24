class Game < ApplicationRecord
  belongs_to :developer

  has_many :game_genres
  has_many :genres, through: :game_genres

  has_many :game_platforms
  has_many :platforms, through: :game_platforms

  def init
    self.developer_id ||= 0 if self.developer.has_attribute? :developer_id
  end

  validates :name, presence: true
  validates :rating, :total_rating, numericality: true

  def genres_list
    genres.map { |genre| genre.name }.join
  end

  def platforms_list
    platforms.map { |platform| platform.name }.join
  end
end
