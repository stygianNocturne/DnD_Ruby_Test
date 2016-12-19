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

ActiveRecord::Schema.define(version: 20161215013104) do

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "name",                limit: 255
    t.string   "primary_attribute",   limit: 255
    t.string   "secondary_attribute", limit: 255
  end

  create_table "characters", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "name",        limit: 255
    t.integer  "race_id",     limit: 4
    t.integer  "category_id", limit: 4
    t.string   "alignment1",  limit: 255
    t.string   "alignment2",  limit: 255
    t.integer  "level",       limit: 4
    t.integer  "strRoll",     limit: 4
    t.integer  "dexRoll",     limit: 4
    t.integer  "conRoll",     limit: 4
    t.integer  "perRoll",     limit: 4
    t.integer  "intRoll",     limit: 4
    t.integer  "wisRoll",     limit: 4
    t.integer  "chrRoll",     limit: 4
    t.integer  "stlRoll",     limit: 4
    t.integer  "maxHP",       limit: 4
    t.integer  "curHP",       limit: 4
    t.integer  "armorClass",  limit: 4
  end

  create_table "races", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

end
