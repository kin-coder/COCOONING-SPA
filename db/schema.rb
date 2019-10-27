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

ActiveRecord::Schema.define(version: 2019_10_27_111803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cartcategories", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "cart_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_cartcategories_on_cart_id"
    t.index ["category_id"], name: "index_cartcategories_on_category_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "service_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_carts_on_service_id"
  end

  create_table "cartsubcategories", force: :cascade do |t|
    t.bigint "subcategory_id"
    t.bigint "cartcategory_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cartcategory_id"], name: "index_cartsubcategories_on_cartcategory_id"
    t.index ["subcategory_id"], name: "index_cartsubcategories_on_subcategory_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.bigint "service_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_categories_on_service_id"
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
    t.time "creneau"
    t.bigint "cart_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_timeslots_on_cart_id"
  end

end
