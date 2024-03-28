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

ActiveRecord::Schema[7.0].define(version: 2024_03_28_080227) do
  create_table "cinemas", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seat_reservations", force: :cascade do |t|
    t.string "seat_number"
    t.integer "show_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "seat_position"
    t.index ["show_id"], name: "index_seat_reservations_on_show_id"
    t.index ["user_id"], name: "index_seat_reservations_on_user_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "movie_title"
    t.datetime "start_time"
    t.integer "cinema_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_shows_on_cinema_id"
  end

  add_foreign_key "seat_reservations", "shows"
  add_foreign_key "seat_reservations", "users"
  add_foreign_key "shows", "cinemas"
end
