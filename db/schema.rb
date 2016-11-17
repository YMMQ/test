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

ActiveRecord::Schema.define(version: 20161117083932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addvs", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["organization_id"], name: "index_addvs_on_organization_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.integer  "province_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["province_id"], name: "index_cities_on_province_id", using: :btree
  end

  create_table "degrees", force: :cascade do |t|
    t.integer  "dtype_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dtype_id"], name: "index_degrees_on_dtype_id", using: :btree
  end

  create_table "dtypes", force: :cascade do |t|
    t.string   "name"
    t.string   "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutes", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_institutes_on_city_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "addv_id"
    t.integer  "profession_id"
    t.integer  "degree_id"
    t.integer  "city_id"
    t.integer  "qty"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["addv_id"], name: "index_jobs_on_addv_id", using: :btree
    t.index ["city_id"], name: "index_jobs_on_city_id", using: :btree
    t.index ["degree_id"], name: "index_jobs_on_degree_id", using: :btree
    t.index ["profession_id"], name: "index_jobs_on_profession_id", using: :btree
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  add_foreign_key "addvs", "organizations"
  add_foreign_key "cities", "provinces"
  add_foreign_key "degrees", "dtypes"
  add_foreign_key "institutes", "cities"
  add_foreign_key "jobs", "addvs"
  add_foreign_key "jobs", "cities"
  add_foreign_key "jobs", "degrees"
  add_foreign_key "jobs", "professions"
end
