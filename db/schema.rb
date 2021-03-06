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

ActiveRecord::Schema.define(version: 20180426234856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "folders", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_folders_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "npc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["npc_id"], name: "index_likes_on_npc_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name", null: false
    t.string "race"
    t.string "challenge_rating"
    t.string "traits"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "private", null: false
    t.string "dnd_class"
    t.bigint "user_id"
    t.integer "HP"
    t.integer "AC"
    t.string "ability_modifiers"
    t.string "spells_abilities"
    t.string "items"
    t.integer "level"
    t.bigint "folder_id"
    t.index ["folder_id"], name: "index_npcs_on_folder_id"
    t.index ["user_id"], name: "index_npcs_on_user_id"
  end

  create_table "saves", force: :cascade do |t|
    t.bigint "folder_id"
    t.bigint "npc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["folder_id"], name: "index_saves_on_folder_id"
    t.index ["npc_id"], name: "index_saves_on_npc_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_name", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "examples", "users"
  add_foreign_key "folders", "users"
  add_foreign_key "likes", "npcs"
  add_foreign_key "likes", "users"
  add_foreign_key "npcs", "folders"
  add_foreign_key "npcs", "users"
  add_foreign_key "saves", "folders"
  add_foreign_key "saves", "npcs"
end
