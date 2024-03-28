ActiveRecord::Schema[7.0].define(version: 2024_03_27_073512) do
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
