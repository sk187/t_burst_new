class CreateHashtag < ActiveRecord::Migration
  def change
    create_table :hashtags do |t|
      t.string :body
    end
  end
end
