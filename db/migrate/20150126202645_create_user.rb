class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name, null: false
    	t.string :uid, null: false
    	t.string :provider, null: false
    	t.boolean :oauth_callback_confirmed, null: false

    	t.timestamps null: false
    end
  end
end
