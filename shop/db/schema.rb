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

ActiveRecord::Schema.define(version: 2021_03_03_212122) do

  create_table "brands", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "computers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.bigint "country_id", null: false
    t.bigint "color_id", null: false
    t.bigint "os_id", null: false
    t.decimal "price", precision: 10
    t.string "produced"
    t.decimal "width", precision: 10
    t.decimal "height", precision: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_computers_on_brand_id"
    t.index ["category_id"], name: "index_computers_on_category_id"
    t.index ["color_id"], name: "index_computers_on_color_id"
    t.index ["country_id"], name: "index_computers_on_country_id"
    t.index ["os_id"], name: "index_computers_on_os_id"
  end

  create_table "coolers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10
    t.string "produced"
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.bigint "country_id", null: false
    t.string "cooling", null: false
    t.string "soket"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_coolers_on_brand_id"
    t.index ["category_id"], name: "index_coolers_on_category_id"
    t.index ["country_id"], name: "index_coolers_on_country_id"
  end

  create_table "countries", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "harddisks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10
    t.string "produced"
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.bigint "country_id", null: false
    t.string "volume"
    t.string "interface"
    t.string "factor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_harddisks_on_brand_id"
    t.index ["category_id"], name: "index_harddisks_on_category_id"
    t.index ["country_id"], name: "index_harddisks_on_country_id"
  end

  create_table "monitorsses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10
    t.decimal "diagonal", precision: 10
    t.bigint "category_id", null: false
    t.string "resolution"
    t.bigint "color_id", null: false
    t.bigint "brand_id", null: false
    t.string "produced"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_monitorsses_on_brand_id"
    t.index ["category_id"], name: "index_monitorsses_on_category_id"
    t.index ["color_id"], name: "index_monitorsses_on_color_id"
    t.index ["country_id"], name: "index_monitorsses_on_country_id"
  end

  create_table "monoblocks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.bigint "country_id", null: false
    t.bigint "color_id", null: false
    t.bigint "os_id", null: false
    t.decimal "price", precision: 10
    t.decimal "diagonal", precision: 10
    t.string "produced"
    t.string "resolution"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_monoblocks_on_brand_id"
    t.index ["category_id"], name: "index_monoblocks_on_category_id"
    t.index ["color_id"], name: "index_monoblocks_on_color_id"
    t.index ["country_id"], name: "index_monoblocks_on_country_id"
    t.index ["os_id"], name: "index_monoblocks_on_os_id"
  end

  create_table "motherboards", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10
    t.string "produced"
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.bigint "country_id", null: false
    t.string "factor"
    t.string "soket"
    t.string "chipset"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_motherboards_on_brand_id"
    t.index ["category_id"], name: "index_motherboards_on_category_id"
    t.index ["country_id"], name: "index_motherboards_on_country_id"
  end

  create_table "notebooks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "diagonal", precision: 10
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.bigint "country_id", null: false
    t.bigint "color_id", null: false
    t.decimal "price", precision: 10
    t.string "produced"
    t.bigint "os_id", null: false
    t.string "resolution"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_notebooks_on_brand_id"
    t.index ["category_id"], name: "index_notebooks_on_category_id"
    t.index ["color_id"], name: "index_notebooks_on_color_id"
    t.index ["country_id"], name: "index_notebooks_on_country_id"
    t.index ["os_id"], name: "index_notebooks_on_os_id"
  end

  create_table "os", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "powersupplies", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10
    t.string "produced"
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.bigint "country_id", null: false
    t.integer "power"
    t.string "pfc"
    t.integer "efficiency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_powersupplies_on_brand_id"
    t.index ["category_id"], name: "index_powersupplies_on_category_id"
    t.index ["country_id"], name: "index_powersupplies_on_country_id"
  end

  create_table "processors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10
    t.string "category"
    t.string "country"
    t.string "produced"
    t.string "brand"
    t.string "crystalcodename"
    t.string "socket"
    t.string "model"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "produced"
    t.bigint "category_id", null: false
    t.bigint "brand_id", null: false
    t.bigint "countries_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["countries_id"], name: "index_products_on_countries_id"
  end

  create_table "ssds", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10
    t.string "produced"
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.bigint "country_id", null: false
    t.string "volume"
    t.string "type"
    t.string "factor"
    t.string "interface"
    t.string "controller"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_ssds_on_brand_id"
    t.index ["category_id"], name: "index_ssds_on_category_id"
    t.index ["country_id"], name: "index_ssds_on_country_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videocards", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10
    t.string "produced"
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.bigint "country_id", null: false
    t.string "processor"
    t.string "type"
    t.string "memory"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_videocards_on_brand_id"
    t.index ["category_id"], name: "index_videocards_on_category_id"
    t.index ["country_id"], name: "index_videocards_on_country_id"
  end

  add_foreign_key "computers", "brands"
  add_foreign_key "computers", "categories"
  add_foreign_key "computers", "colors"
  add_foreign_key "computers", "countries"
  add_foreign_key "computers", "os", column: "os_id"
  add_foreign_key "coolers", "brands"
  add_foreign_key "coolers", "categories"
  add_foreign_key "coolers", "countries"
  add_foreign_key "harddisks", "brands"
  add_foreign_key "harddisks", "categories"
  add_foreign_key "harddisks", "countries"
  add_foreign_key "monitorsses", "brands"
  add_foreign_key "monitorsses", "categories"
  add_foreign_key "monitorsses", "colors"
  add_foreign_key "monitorsses", "countries"
  add_foreign_key "monoblocks", "brands"
  add_foreign_key "monoblocks", "categories"
  add_foreign_key "monoblocks", "colors"
  add_foreign_key "monoblocks", "countries"
  add_foreign_key "monoblocks", "os", column: "os_id"
  add_foreign_key "motherboards", "brands"
  add_foreign_key "motherboards", "categories"
  add_foreign_key "motherboards", "countries"
  add_foreign_key "notebooks", "brands"
  add_foreign_key "notebooks", "categories"
  add_foreign_key "notebooks", "colors"
  add_foreign_key "notebooks", "countries"
  add_foreign_key "notebooks", "os", column: "os_id"
  add_foreign_key "powersupplies", "brands"
  add_foreign_key "powersupplies", "categories"
  add_foreign_key "powersupplies", "countries"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "countries", column: "countries_id"
  add_foreign_key "ssds", "brands"
  add_foreign_key "ssds", "categories"
  add_foreign_key "ssds", "countries"
  add_foreign_key "videocards", "brands"
  add_foreign_key "videocards", "categories"
  add_foreign_key "videocards", "countries"
end
