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

ActiveRecord::Schema.define(version: 2019_12_03_191709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorite_sandwiches", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "sandwich_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sandwich_id"], name: "index_favorite_sandwiches_on_sandwich_id"
    t.index ["user_id"], name: "index_favorite_sandwiches_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "sandwich_ingredients", force: :cascade do |t|
    t.bigint "sandwich_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_sandwich_ingredients_on_ingredient_id"
    t.index ["sandwich_id"], name: "index_sandwich_ingredients_on_sandwich_id"
  end

  create_table "sandwich_orders", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "sandwich_id"
    t.decimal "price"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_sandwich_orders_on_order_id"
    t.index ["sandwich_id"], name: "index_sandwich_orders_on_sandwich_id"
  end

  create_table "sandwiches", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.date "birthday"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favorite_sandwiches", "sandwiches"
  add_foreign_key "favorite_sandwiches", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "sandwich_ingredients", "ingredients"
  add_foreign_key "sandwich_ingredients", "sandwiches"
  add_foreign_key "sandwich_orders", "orders"
  add_foreign_key "sandwich_orders", "sandwiches"
end
