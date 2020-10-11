class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :release_date
      t.text :description
      t.decimal :rating
      t.decimal :total_rating
      t.references :developer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
