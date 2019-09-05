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

ActiveRecord::Schema.define(version: 2019_09_05_134207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "de_emotions", force: :cascade do |t|
    t.bigint "diary_entry_id"
    t.bigint "emotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diary_entry_id"], name: "index_de_emotions_on_diary_entry_id"
    t.index ["emotion_id"], name: "index_de_emotions_on_emotion_id"
  end

  create_table "deut_styles", force: :cascade do |t|
    t.bigint "diary_entry_id"
    t.bigint "ut_style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diary_entry_id"], name: "index_deut_styles_on_diary_entry_id"
    t.index ["ut_style_id"], name: "index_deut_styles_on_ut_style_id"
  end

  create_table "diary_entries", force: :cascade do |t|
    t.date "date"
    t.text "a_event"
    t.string "c_emotion"
    t.integer "c_emotion_rate"
    t.text "c_physical_sensation"
    t.text "b_self_statement"
    t.text "b_hot_thought"
    t.integer "b_hot_thought_rate"
    t.text "d_facts_for"
    t.text "d_facts_against"
    t.text "d_other_view"
    t.text "d_different_view"
    t.integer "e_balanced_thought"
    t.integer "e_hot_thought_rerate"
    t.integer "e_emotion_rerate"
    t.bigint "de_emotion_id"
    t.bigint "deut_style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["de_emotion_id"], name: "index_diary_entries_on_de_emotion_id"
    t.index ["deut_style_id"], name: "index_diary_entries_on_deut_style_id"
  end

  create_table "emotions", force: :cascade do |t|
    t.string "name"
    t.bigint "de_emotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.index ["de_emotion_id"], name: "index_emotions_on_de_emotion_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "ut_styles", force: :cascade do |t|
    t.string "name"
    t.bigint "deut_style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deut_style_id"], name: "index_ut_styles_on_deut_style_id"
  end

end
