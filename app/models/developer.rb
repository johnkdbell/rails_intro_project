class Developer < ApplicationRecord
  validates :name, presences: true, uniqueness: true
end
