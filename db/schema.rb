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

ActiveRecord::Schema.define(version: 20170213162021) do

  create_table "gallery_images", force: :cascade do |t|
    t.string   "image"
    t.string   "alt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "state"
    t.integer  "product_id"
    t.string   "type"
    t.string   "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "mobile"
    t.string   "email"
    t.string   "school"
    t.string   "department"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "payment_configs", force: :cascade do |t|
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.string   "description"
    t.string   "hash_key"
    t.string   "hash_iv"
    t.string   "merchant_id"
    t.string   "respond_type",   default: "JSON"
    t.string   "lang_type",      default: "zh-tw"
    t.string   "credit",         default: "1"
    t.string   "cvs",            default: "1"
    t.string   "barcode",        default: "1"
    t.string   "version",        default: "1.2"
    t.string   "login_type",     default: "0"
    t.string   "production_api", default: "https://api.spgateway.com/MPG/mpg_gateway"
    t.string   "staging_api",    default: "https://capi.spgateway.com/MPG/mpg_gateway"
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
