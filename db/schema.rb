# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_17_103657) do

  create_table "bicycles", force: :cascade do |t|
    t.string "bitype"
    t.integer "qty"
    t.integer "uprice"
    t.integer "ucost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cashes", force: :cascade do |t|
    t.date "date"
    t.integer "bal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.date "date1"
    t.date "date2"
    t.integer "bicycle_id", null: false
    t.integer "qtybought"
    t.integer "valuebought"
    t.date "finishdate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bicycle_id"], name: "index_purchases_on_bicycle_id"
  end

  create_table "sales", force: :cascade do |t|
    t.date "date1"
    t.date "date2"
    t.integer "bicycle_id", null: false
    t.integer "qtysold"
    t.integer "valuesold"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bicycle_id"], name: "index_sales_on_bicycle_id"
  end

  add_foreign_key "purchases", "bicycles"
  add_foreign_key "sales", "bicycles"
end
