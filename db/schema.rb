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

ActiveRecord::Schema.define(version: 2019_10_30_112839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.bigint "service_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_categories_on_service_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "service_id"
    t.bigint "client_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_comments_on_client_id"
    t.index ["service_id"], name: "index_comments_on_service_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departmentproviders", force: :cascade do |t|
    t.bigint "department_id"
    t.bigint "provider_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_departmentproviders_on_department_id"
    t.index ["provider_id"], name: "index_departmentproviders_on_provider_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_departments_on_country_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_providers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_providers_on_reset_password_token", unique: true
  end

  create_table "reservationcategories", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "reservation_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_reservationcategories_on_category_id"
    t.index ["reservation_id"], name: "index_reservationcategories_on_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "client_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_reservations_on_client_id"
    t.index ["service_id"], name: "index_reservations_on_service_id"
  end

  create_table "reservationsubcategories", force: :cascade do |t|
    t.bigint "subcategory_id"
    t.bigint "reservationcategory_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reservationcategory_id"], name: "index_reservationsubcategories_on_reservationcategory_id"
    t.index ["subcategory_id"], name: "index_reservationsubcategories_on_subcategory_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.bigint "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

  create_table "timeslots", force: :cascade do |t|
    t.time "date"
    t.bigint "reservation_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reservation_id"], name: "index_timeslots_on_reservation_id"
  end

end
