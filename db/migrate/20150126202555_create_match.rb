class CreateMatch < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :winning_player
      t.integer :winning_hashtag
      t.integer :losing_player
      t.integer :losing_hashtag
      t.integer :winning_hashtag_score
      t.integer :losing_hashtag_score
      t.integer :tie_player_one
      t.integer :tie_player_two
      t.integer :tie_score
    end
  end
end
