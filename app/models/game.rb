class Game < ApplicationRecord
  belongs_to :developer

  validates :name, presence: true
  validates :rating, :total_rating, numericality: true

end
