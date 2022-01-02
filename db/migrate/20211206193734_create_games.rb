class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :year_published
      t.integer :min_player
      t.integer :max_player
      t.integer :min_time
      t.integer :max_time
      t.integer :age
      t.string :description
      t.string :thumb_url
      t.string :image_url
      t.decimal :avg_rating, precision: 10, scale: 3
      t.integer :review_count
      t.integer :user_id

      t.timestamps
    end
  end
end
