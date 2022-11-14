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

ActiveRecord::Schema.define(version: 2022_11_14_185006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_receipts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "admin_requests", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "admin_requests_completeds", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "budget_categories", force: :cascade do |t|
    t.string "name"
    t.decimal "budgeted"
    t.decimal "spent"
    t.decimal "pending"
    t.decimal "balance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "budget_id"
  end

  create_table "budget_subcategories", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.decimal "budgeted"
    t.decimal "spent"
    t.decimal "pending"
    t.decimal "balance"
    t.integer "budget_category_id"
  end

  create_table "budgets", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.decimal "budgeted"
    t.decimal "spent"
    t.decimal "pending"
    t.decimal "balance"
    t.string "fiscal_year"
    t.boolean "active"
    t.boolean "locked"
    t.boolean "default"
  end

  create_table "committees", force: :cascade do |t|
    t.string "committee_name"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "budget_id"
  end

  create_table "creditcards", force: :cascade do |t|
    t.integer "user_id"
    t.string "committee"
    t.date "start_time"
    t.date "end_time"
    t.string "reason"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "vendor_title"
    t.string "tax_id_number"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "payment_method"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "items_purchased"
    t.string "budget"
    t.string "category"
    t.string "subcategory"
    t.string "taxcategory"
    t.boolean "gift"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.string "user_id"
    t.string "vendor_id"
    t.string "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "budget_id"
    t.string "category"
    t.string "subcategory"
    t.string "tax_category"
    t.boolean "gift"
    t.decimal "cost"
    t.string "items_purchased"
    t.string "type"
    t.integer "vendor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.integer "uin"
    t.string "email"
    t.string "phone_number"
    t.integer "committee_id"
    t.string "permission_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "uid"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "vendor_name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
