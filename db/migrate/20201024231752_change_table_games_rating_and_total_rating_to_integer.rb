class ChangeTableGamesRatingAndTotalRatingToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :rating, :integer
    change_column :games, :total_rating, :integer
  end
end
