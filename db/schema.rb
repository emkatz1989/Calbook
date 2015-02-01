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

ActiveRecord::Schema.define(version: 20150201041931) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blurbs", force: true do |t|
    t.integer  "day_id"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blurbs", ["day_id"], name: "index_blurbs_on_day_id", using: :btree

  create_table "days", force: true do |t|
    t.integer  "user_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "days", ["user_id"], name: "index_days_on_user_id", using: :btree

  create_table "events", force: true do |t|
    t.integer  "day_id"
    t.text     "text"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "calendar_id"
    t.integer  "event_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["day_id"], name: "index_events_on_day_id", using: :btree

  create_table "image_videos", force: true do |t|
    t.integer  "day_id"
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "media_file_name"
    t.string   "media_content_type"
    t.integer  "media_file_size"
    t.datetime "media_updated_at"
    t.integer  "user_id"
  end

  add_index "image_videos", ["day_id"], name: "index_image_videos_on_day_id", using: :btree

  create_table "tag_types", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tag_types", ["tag_id"], name: "index_tag_types_on_tag_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tokens", force: true do |t|
    t.string   "access_token"
    t.string   "refresh_token"
    t.datetime "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "domain"
    t.string   "fullname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
