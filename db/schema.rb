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

ActiveRecord::Schema.define(version: 2022_11_17_230753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_receipts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "admin_requests", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "atcs", force: :cascade do |t|
    t.integer "vendor_id"
    t.string "contact_name"
    t.decimal "phone"
    t.string "email"
    t.string "purchase_info"
    t.integer "amount"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.integer "user_id"
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
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "budget_id"
  end

  create_table "creditcards", force: :cascade do |t|
    t.integer "user_id"
    t.string "payment_link"
    t.string "Confirmation_order"
    t.string "reservation_name"
    t.string "status"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "recipient_name"
    t.integer "vendor_id"
    t.integer "phone"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "vendor_id"
    t.string "vendor_title"
    t.string "tax_id_number"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "payment_method"
    t.string "test"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.bigint "invoice_id", null: false
    t.string "items_purchased"
    t.string "budget"
    t.string "category"
    t.string "subcategory"
    t.string "taxcategory"
    t.boolean "gift"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_items_on_invoice_id"
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
    t.string "tax_category"
    t.boolean "gift"
    t.decimal "cost"
    t.string "items_purchased"
    t.integer "vendor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.text "notes"
    t.integer "budget_subcategory_id"
    t.string "recipient_name"
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
    t.integer "tax_identification_number"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "items", "invoices"
end
