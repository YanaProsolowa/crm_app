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

ActiveRecord::Schema.define(version: 20140719082618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "otch"
    t.string   "surname"
    t.string   "gender"
    t.integer  "age"
    t.string   "phone_number"
    t.string   "email"
    t.integer  "passport_series"
    t.integer  "passport_number"
    t.integer  "driver_series"
    t.integer  "driver_number"
    t.integer  "year_get"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.datetime "date_get"
    t.integer  "number_people"
    t.integer  "user_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name",                   default: "", null: false
    t.string   "otch"
    t.string   "surname",                default: "", null: false
    t.string   "phone_number"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", force: true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_roles", ["role_id"], name: "index_users_roles_on_role_id", using: :btree
  add_index "users_roles", ["user_id"], name: "index_users_roles_on_user_id", using: :btree

end
