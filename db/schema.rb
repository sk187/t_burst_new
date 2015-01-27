# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150126202645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hashtags", force: :cascade do |t|
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "winning_player_id"
    t.integer  "winning_hashtag_id"
    t.integer  "losing_player_id"
    t.integer  "losing_hashtag_id"
    t.integer  "winning_hashtag_score"
    t.integer  "losing_hashtag_score"
    t.integer  "tie_player_one_id"
    t.integer  "tie_player_two_id"
    t.integer  "tie_hashtag_one_id"
    t.integer  "tie_hashtag_two_id"
    t.integer  "tie_score"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "matches", ["losing_hashtag_id"], name: "index_matches_on_losing_hashtag_id", using: :btree
  add_index "matches", ["losing_player_id"], name: "index_matches_on_losing_player_id", using: :btree
  add_index "matches", ["tie_hashtag_one_id"], name: "index_matches_on_tie_hashtag_one_id", using: :btree
  add_index "matches", ["tie_hashtag_two_id"], name: "index_matches_on_tie_hashtag_two_id", using: :btree
  add_index "matches", ["tie_player_one_id"], name: "index_matches_on_tie_player_one_id", using: :btree
  add_index "matches", ["tie_player_two_id"], name: "index_matches_on_tie_player_two_id", using: :btree
  add_index "matches", ["winning_hashtag_id"], name: "index_matches_on_winning_hashtag_id", using: :btree
  add_index "matches", ["winning_player_id"], name: "index_matches_on_winning_player_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                     null: false
    t.string   "uid",                      null: false
    t.string   "provider",                 null: false
    t.boolean  "oauth_callback_confirmed", null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
