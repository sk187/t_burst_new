class CreateMatch < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :winning_player_id, index: true
      t.integer :winning_hashtag_id, index: true
      t.integer :losing_player_id, index: true
      t.integer :losing_hashtag_id, index: true
      t.integer :winning_hashtag_score
      t.integer :losing_hashtag_score
      t.integer :tie_player_one_id, index: true
      t.integer :tie_player_two_id, index: true
      t.integer :tie_hashtag_one_id, index: true
      t.integer :tie_hashtag_two_id, index: true
      t.integer :tie_score

      t.timestamps null: false
    end
  end
end
