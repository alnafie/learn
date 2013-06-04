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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130604211038) do

  create_table "ads", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "make"
    t.integer  "user_id"
  end

  add_index "ads", ["user_id"], :name => "index_ads_on_user_id"

  create_table "comments", :force => true do |t|
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "ad_id"
    t.integer  "user_id"
  end

  add_index "comments", ["ad_id"], :name => "index_comments_on_ad_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "favorites", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "ad_id"
    t.integer  "user_id"
  end

  add_index "favorites", ["ad_id"], :name => "index_favorites_on_ad_id"
  add_index "favorites", ["user_id"], :name => "index_favorites_on_user_id"

  create_table "photos", :force => true do |t|
    t.string   "caption"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "ad_id"
    t.integer  "user_id"
  end

  add_index "photos", ["ad_id"], :name => "index_photos_on_ad_id"
  add_index "photos", ["user_id"], :name => "index_photos_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
