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

ActiveRecord::Schema.define(version: 2019_07_25_113712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hero_class"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_heros_on_user_id"
  end

  create_table "user_heros", force: :cascade do |t|
    t.bigint "hero_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_id"], name: "index_user_heros_on_hero_id"
    t.index ["user_id"], name: "index_user_heros_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "video_id"
    t.string "display_name"
    t.text "summary"
    t.boolean "is_mentor"
    t.string "region"
    t.string "platform"
    t.string "avatar_url"
    t.integer "skill_rating"
    t.bigint "hero_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["hero_id"], name: "index_users_on_hero_id"
    t.index ["token"], name: "index_users_on_token", unique: true
    t.index ["video_id"], name: "index_users_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_videos_on_user_id"
  end

  add_foreign_key "examples", "users"
  add_foreign_key "heros", "users"
  add_foreign_key "user_heros", "heros"
  add_foreign_key "user_heros", "users"
  add_foreign_key "users", "heros"
  add_foreign_key "users", "videos"
  add_foreign_key "videos", "users"
end
