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

ActiveRecord::Schema.define(version: 2020_11_11_154059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "condos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "property_id"
    t.integer "user_id"
    t.index ["name"], name: "index_condos_on_name", unique: true
    t.index ["property_id"], name: "index_condos_on_property_id"
    t.index ["user_id"], name: "index_condos_on_user_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string "nature"
    t.text "description"
    t.float "estimated"
    t.float "real", default: 0.0
    t.integer "exercice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "condo_id"
    t.integer "user_id"
    t.index ["condo_id"], name: "index_expenses_on_condo_id"
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.date "date_invoice"
    t.string "company"
    t.text "description"
    t.float "amount"
    t.boolean "paid"
    t.bigint "expense_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["expense_id"], name: "index_invoices_on_expense_id"
    t.index ["user_id"], name: "index_invoices_on_user_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "address"
    t.string "floor"
    t.integer "surface"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "condo_id"
    t.integer "user_id"
    t.integer "repart"
    t.index ["condo_id"], name: "index_properties_on_condo_id"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fullname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "condos", "properties"
  add_foreign_key "condos", "users"
  add_foreign_key "expenses", "condos"
  add_foreign_key "expenses", "users"
  add_foreign_key "invoices", "expenses"
  add_foreign_key "invoices", "users"
  add_foreign_key "properties", "condos"
  add_foreign_key "properties", "users"
end
