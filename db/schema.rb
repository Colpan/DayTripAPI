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

ActiveRecord::Schema.define(version: 20150308232151) do

  create_table "activities", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "address",     limit: 255
    t.string   "category",    limit: 255
    t.string   "price",       limit: 255
    t.integer  "clicks",      limit: 4
    t.text     "description", limit: 65535
    t.string   "image",       limit: 255
    t.string   "latitude",    limit: 255
    t.string   "longitude",   limit: 255
    t.integer  "rating",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "country_id",  limit: 4
    t.integer  "state_id",    limit: 4
    t.integer  "region_id",   limit: 4
    t.integer  "city_id",     limit: 4
    t.integer  "zipcode_id",  limit: 4
  end

  add_index "activities", ["city_id"], name: "index_activities_on_city_id", using: :btree
  add_index "activities", ["country_id"], name: "index_activities_on_country_id", using: :btree
  add_index "activities", ["region_id"], name: "index_activities_on_region_id", using: :btree
  add_index "activities", ["state_id"], name: "index_activities_on_state_id", using: :btree
  add_index "activities", ["zipcode_id"], name: "index_activities_on_zipcode_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "region_id",  limit: 4
    t.integer  "state_id",   limit: 4
    t.integer  "country_id", limit: 4
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree
  add_index "cities", ["region_id"], name: "index_cities_on_region_id", using: :btree
  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "country",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "region",     limit: 255
    t.integer  "country_id", limit: 4
    t.integer  "state_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "regions", ["country_id"], name: "index_regions_on_country_id", using: :btree
  add_index "regions", ["state_id"], name: "index_regions_on_state_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "state",      limit: 255
    t.integer  "country_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id", using: :btree

  create_table "zipcodes", force: :cascade do |t|
    t.string   "zipcode",    limit: 255
    t.integer  "city_id",    limit: 4
    t.integer  "state_id",   limit: 4
    t.integer  "region_id",  limit: 4
    t.integer  "country_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "zipcodes", ["city_id"], name: "index_zipcodes_on_city_id", using: :btree
  add_index "zipcodes", ["country_id"], name: "index_zipcodes_on_country_id", using: :btree
  add_index "zipcodes", ["region_id"], name: "index_zipcodes_on_region_id", using: :btree
  add_index "zipcodes", ["state_id"], name: "index_zipcodes_on_state_id", using: :btree

  add_foreign_key "activities", "cities"
  add_foreign_key "activities", "countries"
  add_foreign_key "activities", "regions"
  add_foreign_key "activities", "states"
  add_foreign_key "activities", "zipcodes"
  add_foreign_key "cities", "countries"
  add_foreign_key "cities", "regions"
  add_foreign_key "cities", "states"
  add_foreign_key "regions", "countries"
  add_foreign_key "regions", "states"
  add_foreign_key "states", "countries"
  add_foreign_key "zipcodes", "cities"
  add_foreign_key "zipcodes", "countries"
  add_foreign_key "zipcodes", "regions"
  add_foreign_key "zipcodes", "states"
end
