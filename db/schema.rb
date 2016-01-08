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

ActiveRecord::Schema.define(version: 20160108001633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "event_type"
    t.integer  "event_number"
    t.integer  "event_year"
    t.boolean  "regular_event"
    t.boolean  "ryder_cup"
    t.string   "location"
    t.date     "event_date"
    t.time     "event_time"
    t.string   "description"
    t.float    "deposit"
    t.float    "cost"
    t.string   "website"
    t.string   "map"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "holder"
  end

  create_table "reports", force: :cascade do |t|
    t.string   "main_title"
    t.string   "sub_title"
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
  end

  add_index "reports", ["event_id"], name: "index_reports_on_event_id", using: :btree

end
