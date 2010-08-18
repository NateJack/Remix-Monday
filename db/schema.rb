# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100701151912) do

  create_table "remixes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "track_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "votes_count", :default => 0
    t.string   "title"
  end

  create_table "users", :force => true do |t|
    t.string   "soundcloud_id"
    t.string   "username"
    t.string   "access_token"
    t.string   "access_secret"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "plan"
    t.string   "avatar_url"
    t.string   "website_title"
    t.string   "permalink"
    t.string   "city"
    t.string   "uri"
    t.string   "country"
    t.string   "discogs_name"
    t.string   "website"
    t.string   "full_name"
    t.integer  "followers_count"
    t.text     "description",               :limit => 255
    t.string   "permalink_url"
    t.integer  "followings_count"
    t.integer  "track_count"
    t.string   "myspace_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", :force => true do |t|
    t.integer  "remix_id"
    t.string   "ip_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
