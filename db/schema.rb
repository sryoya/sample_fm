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

ActiveRecord::Schema.define(version: 20180430135447) do

  create_table "playlists", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "memo",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "password",   limit: 255
  end

  create_table "search_logs", force: :cascade do |t|
    t.string   "search_word", limit: 255
    t.string   "user_ip",     limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "artist_name",          limit: 255
    t.string   "track_name",           limit: 255
    t.string   "collection_name",      limit: 255
    t.integer  "playlist_id",          limit: 4
    t.text     "preview_url",          limit: 65535
    t.text     "artwork_url",          limit: 65535
    t.integer  "itunes_artist_id",     limit: 4
    t.integer  "itunes_track_id",      limit: 4
    t.integer  "itunes_collection_id", limit: 4
    t.text     "collection_view_url",  limit: 65535
    t.text     "track_view_url",       limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

end
