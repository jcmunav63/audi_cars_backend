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

ActiveRecord::Schema[7.1].define(version: 2024_06_20_150744) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "model"
    t.string "name"
    t.bigint "user_id", null: false
    t.text "description"
    t.string "category"
    t.float "price"
    t.float "discount"
    t.float "epa_fuel_economy"
    t.string "body_colors"
    t.float "power_hp"
    t.float "torque_lb_ft"
    t.string "engine_type"
    t.float "acceleration_sec_to_60mph"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.string "thumbnail"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "car_id", null: false
    t.datetime "date_reserved"
    t.date "reservation_date"
    t.time "reservation_time"
    t.string "model"
    t.string "name"
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_reservations_on_car_id"
    t.index ["city_id"], name: "index_reservations_on_city_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "cars", "users"
  add_foreign_key "cities", "states"
  add_foreign_key "reservations", "cars"
  add_foreign_key "reservations", "cities"
  add_foreign_key "reservations", "users"
  add_foreign_key "states", "countries"
end
