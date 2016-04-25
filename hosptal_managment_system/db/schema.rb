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

ActiveRecord::Schema.define(version: 20160422111258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
    t.integer  "doctor_id"
  end

  add_index "appointments", ["client_id"], name: "index_appointments_on_client_id", using: :btree
  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.text     "password"
    t.integer  "age"
    t.text     "gender"
    t.integer  "phoneno"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.text     "password"
    t.integer  "age"
    t.text     "gender"
    t.integer  "phoneno"
    t.string   "address"
    t.text     "speality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "price"
  end

  create_table "events_organizers", force: :cascade do |t|
    t.integer "event_id"
    t.integer "organizer_id"
  end

  add_index "events_organizers", ["event_id"], name: "index_events_organizers_on_event_id", using: :btree
  add_index "events_organizers", ["organizer_id"], name: "index_events_organizers_on_organizer_id", using: :btree

  create_table "organizers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "price"
  end

  create_table "spealities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "doctor_id"
  end

  add_index "spealities", ["doctor_id"], name: "index_spealities_on_doctor_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.integer  "age"
    t.text     "gender"
    t.integer  "phoneno"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "accept"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.boolean  "gender"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "clients"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "spealities", "doctors"
end
