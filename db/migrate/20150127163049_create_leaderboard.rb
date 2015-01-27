class CreateLeaderboard < ActiveRecord::Migration
  def change
    create_table :leaderboards do |t|
    	t.references :user, index: true
      t.integer :win_count

      t.timestamps
    end
  end
end
