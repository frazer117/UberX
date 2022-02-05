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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 0) do
=======
ActiveRecord::Schema.define(version: 2022_01_29_155452) do
>>>>>>> c2582f4f47d30045862b0de9ff3084db38591869
=======
=======
>>>>>>> a053b72052a46a45343100d82273316eea075307
=======
>>>>>>> 76157777e5820d4e4a10ba3e4263f2e232434258
ActiveRecord::Schema.define(version: 2022_02_01_195550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "booking_start_date"
    t.date "booking_end_date"
    t.integer "group_size"
    t.bigint "rocket_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rocket_id"], name: "index_bookings_on_rocket_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "rockets", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.integer "capacity"
    t.integer "range"
    t.integer "power"
    t.boolean "is_available"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_rockets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "rockets"
  add_foreign_key "bookings", "users"
  add_foreign_key "rockets", "users"
end
