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

ActiveRecord::Schema[7.0].define(version: 2023_03_09_162131) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_modifiers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "item_id"
    t.integer "modifier_id"
    t.index ["item_id"], name: "index_item_modifiers_on_item_id"
    t.index ["modifier_id"], name: "index_item_modifiers_on_modifier_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.integer "stock_quantity"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.index ["category_id"], name: "index_items_on_category_id"
  end

  create_table "modifiers", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stock_quantity"
    t.boolean "status"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "ratings"
    t.integer "rateable_id"
    t.string "rateable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "item_modifiers", "items"
  add_foreign_key "item_modifiers", "modifiers"
  add_foreign_key "items", "categories"
end
