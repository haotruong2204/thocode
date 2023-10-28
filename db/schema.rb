# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_28_100830) do
  create_table "accounts", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "full_name", null: false
    t.string "user_name", null: false
    t.integer "phone_number"
    t.string "address"
    t.datetime "birth_of_date"
    t.string "role", default: "0", null: false
    t.text "photo_url"
    t.integer "status", default: 1, null: false
    t.string "provider"
    t.string "uid"
    t.string "token"
    t.string "refresh_token"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.boolean "is_student", default: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["slug"], name: "index_accounts_on_slug", unique: true
    t.index ["unlock_token"], name: "index_accounts_on_unlock_token", unique: true
    t.index ["user_name"], name: "index_accounts_on_user_name", unique: true
  end

  create_table "admins", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.string "full_name", null: false
    t.string "role", default: "1", null: false
    t.text "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "friendly_id_slugs", charset: "utf8mb4", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, length: { slug: 70, scope: 70 }
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", length: { slug: 140 }
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "histories", charset: "utf8mb4", force: :cascade do |t|
    t.string "type_history"
    t.string "title"
    t.text "description"
    t.integer "account_id"
    t.integer "record_id"
    t.integer "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kanjis", charset: "utf8mb4", force: :cascade do |t|
    t.string "yin_on"
    t.string "yin_kun"
    t.text "svg"
    t.string "yin_han"
    t.string "meaning"
    t.string "chinese_character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_strokes"
    t.integer "level_kanji_id"
  end

  create_table "level_kanjis", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", charset: "utf8mb4", force: :cascade do |t|
    t.integer "account_id"
    t.string "type_record"
    t.text "kanji_list"
    t.string "title"
    t.string "slug"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_records_on_slug", unique: true
  end

end
