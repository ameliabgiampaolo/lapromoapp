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

ActiveRecord::Schema.define(version: 420191122030354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "cont_trend"
    t.bigint "user_id"
    t.bigint "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_articles_on_topic_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "calendars", force: :cascade do |t|
    t.datetime "final_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "kitchen_rating"
    t.integer "ambient_rating"
    t.integer "service_rating"
    t.text "description"
    t.bigint "reservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reservation_id"], name: "index_comments_on_reservation_id"
  end

  create_table "diners", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.boolean "place_notif"
    t.boolean "favorite_notif"
    t.float "start_price"
    t.float "end_price"
    t.string "identity_card"
    t.string "gender"
    t.date "birth_date"
    t.bigint "user_id"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_diners_on_place_id"
    t.index ["user_id"], name: "index_diners_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.bigint "diner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diner_id"], name: "index_favorites_on_diner_id"
    t.index ["restaurant_id"], name: "index_favorites_on_restaurant_id"
  end

  create_table "hist_searches", force: :cascade do |t|
    t.string "message"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_hist_searches_on_user_id"
  end

  create_table "hist_yumis", force: :cascade do |t|
    t.string "type_hist_yumis"
    t.integer "quantity"
    t.bigint "diner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diner_id"], name: "index_hist_yumis_on_diner_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.string "email"
    t.string "status"
    t.bigint "hist_yumis_id"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hist_yumis_id"], name: "index_invitations_on_hist_yumis_id"
    t.index ["users_id"], name: "index_invitations_on_users_id"
  end

  create_table "kitchen_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_types", force: :cascade do |t|
    t.string "name"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_menu_types_on_restaurant_id"
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_payments_on_restaurant_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "photo"
    t.bigint "restaurant_id"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_photos_on_place_id"
    t.index ["restaurant_id"], name: "index_photos_on_restaurant_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "type_place"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_places_on_place_id"
  end

  create_table "plates", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.bigint "menu_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_type_id"], name: "index_plates_on_menu_type_id"
  end

  create_table "promo_calendars", force: :cascade do |t|
    t.bigint "promo_id"
    t.bigint "calendar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["calendar_id"], name: "index_promo_calendars_on_calendar_id"
    t.index ["promo_id"], name: "index_promo_calendars_on_promo_id"
  end

  create_table "promo_plates", force: :cascade do |t|
    t.bigint "plate_id"
    t.bigint "promo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plate_id"], name: "index_promo_plates_on_plate_id"
    t.index ["promo_id"], name: "index_promo_plates_on_promo_id"
  end

  create_table "promos", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.string "name"
    t.string "promo_type"
    t.text "description"
    t.boolean "yumis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_promos_on_restaurant_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "reservation_date"
    t.integer "people_num"
    t.string "status"
    t.bigint "promo_id"
    t.bigint "hist_yumi_id"
    t.bigint "restaurant_id"
    t.bigint "diner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diner_id"], name: "index_reservations_on_diner_id"
    t.index ["hist_yumi_id"], name: "index_reservations_on_hist_yumi_id"
    t.index ["promo_id"], name: "index_reservations_on_promo_id"
    t.index ["restaurant_id"], name: "index_reservations_on_restaurant_id"
  end

  create_table "restaurant_kitchens", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.bigint "kitchen_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kitchen_type_id"], name: "index_restaurant_kitchens_on_kitchen_type_id"
    t.index ["restaurant_id"], name: "index_restaurant_kitchens_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "map_location"
    t.string "zip_code"
    t.integer "capacity"
    t.text "description"
    t.string "rif"
    t.time "start_time"
    t.time "end_time"
    t.boolean "particular"
    t.bigint "place_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_restaurants_on_place_id"
    t.index ["user_id"], name: "index_restaurants_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.integer "cont_trend"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_name"
    t.string "phone"
    t.string "uid"
    t.string "provider"
    t.string "invitation_token"
    t.boolean "is_google"
    t.boolean "approved", default: true
    t.bigint "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "articles", "topics"
  add_foreign_key "articles", "users"
  add_foreign_key "comments", "reservations"
  add_foreign_key "diners", "places"
  add_foreign_key "diners", "users"
  add_foreign_key "favorites", "diners"
  add_foreign_key "favorites", "restaurants"
  add_foreign_key "hist_searches", "users"
  add_foreign_key "hist_yumis", "diners"
  add_foreign_key "invitations", "hist_yumis", column: "hist_yumis_id"
  add_foreign_key "invitations", "users", column: "users_id"
  add_foreign_key "menu_types", "restaurants"
  add_foreign_key "payments", "restaurants"
  add_foreign_key "photos", "places"
  add_foreign_key "photos", "restaurants"
  add_foreign_key "places", "places"
  add_foreign_key "plates", "menu_types"
  add_foreign_key "promo_calendars", "calendars"
  add_foreign_key "promo_calendars", "promos"
  add_foreign_key "promo_plates", "plates"
  add_foreign_key "promo_plates", "promos"
  add_foreign_key "promos", "restaurants"
  add_foreign_key "reservations", "diners"
  add_foreign_key "reservations", "hist_yumis"
  add_foreign_key "reservations", "promos"
  add_foreign_key "reservations", "restaurants"
  add_foreign_key "restaurant_kitchens", "kitchen_types"
  add_foreign_key "restaurant_kitchens", "restaurants"
  add_foreign_key "restaurants", "places"
  add_foreign_key "users", "roles"
end
