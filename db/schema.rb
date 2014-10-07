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

ActiveRecord::Schema.define(version: 20141005142809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daily_infos", force: true do |t|
    t.integer  "exercise_id"
    t.integer  "consumed_minutes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercise_infos", force: true do |t|
    t.string   "exercise"
    t.integer  "calorie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "tel_no"
    t.integer  "ostomate_toilet"
    t.integer  "ccheer_toilet"
    t.integer  "cbet_toilet"
    t.integer  "wchair_lift"
    t.integer  "wchair_escalator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zip_code"
    t.text     "description"
  end

  create_table "profiles", force: true do |t|
    t.string   "sex"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_boards", force: true do |t|
    t.text     "taskText"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "used_calorie_infos", force: true do |t|
    t.integer  "used_calorie"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
    t.integer  "exercise_id"
  end

end