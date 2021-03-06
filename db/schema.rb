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

ActiveRecord::Schema.define(version: 2021_05_16_133749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "district"
    t.string "street"
    t.string "complement"
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "external_code"
  end

  create_table "items", force: :cascade do |t|
    t.string "external_code"
    t.string "name"
    t.float "price"
    t.integer "quantity"
    t.float "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "external_code"
    t.integer "store_id"
    t.string "sub_total"
    t.string "delivery_fee"
    t.string "total"
    t.string "dt_order_create"
    t.string "postal_code"
    t.string "number"
    t.float "total_shipping"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "address_id"
    t.bigint "customers_id"
    t.bigint "items_id"
    t.bigint "payments_id"
    t.index ["address_id"], name: "index_orders_on_address_id"
    t.index ["customers_id"], name: "index_orders_on_customers_id"
    t.index ["items_id"], name: "index_orders_on_items_id"
    t.index ["payments_id"], name: "index_orders_on_payments_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "modality"
    t.float "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "orders", "addresses"
  add_foreign_key "orders", "customers", column: "customers_id"
  add_foreign_key "orders", "items", column: "items_id"
  add_foreign_key "orders", "payments", column: "payments_id"
end
