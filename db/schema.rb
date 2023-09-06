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

ActiveRecord::Schema[7.0].define(version: 2023_09_05_134114) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "desks", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.string "shape"
    t.bigint "wedding_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wedding_id"], name: "index_desks_on_wedding_id"
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guest_desks", force: :cascade do |t|
    t.bigint "desk_id", null: false
    t.bigint "guest_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["desk_id"], name: "index_guest_desks_on_desk_id"
    t.index ["guest_id"], name: "index_guest_desks_on_guest_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "gender"
    t.integer "age_category"
    t.boolean "witness"
    t.integer "status"
    t.bigint "family_id", null: false
    t.bigint "spouse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_guests_on_family_id"
    t.index ["spouse_id"], name: "index_guests_on_spouse_id"
  end

  create_table "spouses", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "gender"
    t.bigint "wedding_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wedding_id"], name: "index_spouses_on_wedding_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wedding_accesses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "wedding_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wedding_accesses_on_user_id"
    t.index ["wedding_id"], name: "index_wedding_accesses_on_wedding_id"
  end

  create_table "weddings", force: :cascade do |t|
    t.date "day"
    t.string "city_hall"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

  add_foreign_key "desks", "weddings"
  add_foreign_key "guest_desks", "desks"
  add_foreign_key "guest_desks", "guests"
  add_foreign_key "guests", "families"
  add_foreign_key "guests", "spouses"
  add_foreign_key "spouses", "weddings"
  add_foreign_key "wedding_accesses", "users"
  add_foreign_key "wedding_accesses", "weddings"
end
