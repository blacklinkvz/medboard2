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

ActiveRecord::Schema[7.1].define(version: 2023_11_10_221046) do
  create_table "bloodtypes", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.integer "phone"
    t.bigint "country_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_contacts_on_country_id"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "continents", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "alpha3_code"
    t.bigint "continent_id", null: false
    t.bigint "language_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["continent_id"], name: "index_countries_on_continent_id"
    t.index ["language_id"], name: "index_countries_on_language_id"
  end

  create_table "destinies", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "finish_date"
    t.bigint "travel_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_destinies_on_country_id"
    t.index ["travel_id"], name: "index_destinies_on_travel_id"
  end

  create_table "diseases", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicaments", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "compound"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_diseases", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "disease_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disease_id"], name: "index_post_diseases_on_disease_id"
    t.index ["post_id"], name: "index_post_diseases_on_post_id"
  end

  create_table "post_medicaments", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "medicament_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicament_id"], name: "index_post_medicaments_on_medicament_id"
    t.index ["post_id"], name: "index_post_medicaments_on_post_id"
  end

  create_table "posts", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.bigint "travel_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["travel_id"], name: "index_posts_on_travel_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "travels", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.date "start_date"
    t.date "finish_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_travels_on_user_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "s_name"
    t.string "lastname"
    t.string "s_lastname"
    t.string "rut"
    t.string "passport"
    t.string "email"
    t.string "password"
    t.bigint "country_id", null: false
    t.bigint "bloodtype_id", null: false
    t.bigint "usertype_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bloodtype_id"], name: "index_users_on_bloodtype_id"
    t.index ["country_id"], name: "index_users_on_country_id"
    t.index ["usertype_id"], name: "index_users_on_usertype_id"
  end

  create_table "usertypes", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contacts", "countries"
  add_foreign_key "contacts", "users"
  add_foreign_key "countries", "continents"
  add_foreign_key "countries", "languages"
  add_foreign_key "destinies", "countries"
  add_foreign_key "destinies", "travels"
  add_foreign_key "post_diseases", "diseases"
  add_foreign_key "post_diseases", "posts"
  add_foreign_key "post_medicaments", "medicaments"
  add_foreign_key "post_medicaments", "posts"
  add_foreign_key "posts", "travels"
  add_foreign_key "posts", "users"
  add_foreign_key "travels", "users"
  add_foreign_key "users", "bloodtypes"
  add_foreign_key "users", "countries"
  add_foreign_key "users", "usertypes"
end
