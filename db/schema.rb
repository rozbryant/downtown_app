# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141207060035) do

  create_table "actives", force: true do |t|
    t.integer  "building_id"
    t.boolean  "fitness"
    t.boolean  "in_pool"
    t.boolean  "out_pool"
    t.boolean  "in_tennis"
    t.boolean  "out_tennis"
    t.boolean  "bball"
    t.boolean  "spa"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", force: true do |t|
    t.integer  "building_id"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buildings", force: true do |t|
    t.string   "image_url"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "headline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "commenter_id"
    t.integer  "building_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favoritings", force: true do |t|
    t.integer  "building_id"
    t.integer  "favorited_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "followings", force: true do |t|
    t.integer  "follower_id"
    t.integer  "building_id"
    t.boolean  "buyer"
    t.boolean  "seller"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restrictions", force: true do |t|
    t.integer  "building_id"
    t.boolean  "no_rental"
    t.integer  "rental_cap"
    t.boolean  "credit"
    t.boolean  "reference"
    t.boolean  "interview"
    t.integer  "min_down"
    t.boolean  "no_cat"
    t.boolean  "no_dog"
    t.integer  "cat_count_limit"
    t.integer  "dog_count_limit"
    t.integer  "dog_weight_limit"
    t.integer  "all_dog_weight_limit"
    t.integer  "all_pet_count_limit"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.integer  "building_id"
    t.boolean  "part_door"
    t.boolean  "full_door"
    t.boolean  "catering"
    t.boolean  "housekeeping"
    t.boolean  "dry_cleaning"
    t.boolean  "concierge"
    t.boolean  "package_receiving"
    t.boolean  "car_wash"
    t.boolean  "dog_wash"
    t.boolean  "restaurant"
    t.boolean  "social"
    t.boolean  "groceries"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spaces", force: true do |t|
    t.integer  "building_id"
    t.boolean  "storage"
    t.boolean  "bike_storage"
    t.boolean  "party_room"
    t.boolean  "sundeck"
    t.boolean  "parking_leased"
    t.boolean  "parking_owned"
    t.boolean  "wine_cellar"
    t.boolean  "humidor"
    t.boolean  "dog_run"
    t.boolean  "lounge"
    t.boolean  "biz_center"
    t.boolean  "conf_room"
    t.boolean  "theater"
    t.boolean  "guest_parking"
    t.boolean  "guest_stay"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stats", force: true do |t|
    t.integer  "building_id"
    t.string   "ownership"
    t.integer  "year_built"
    t.integer  "unit_count"
    t.integer  "stories"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
