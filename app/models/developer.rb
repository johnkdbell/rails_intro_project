class Developer < ApplicationRecord
  has_many :games
  validates :name, presences: true, uniqueness: true
end
