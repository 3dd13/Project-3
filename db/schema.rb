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

ActiveRecord::Schema.define(version: 20131119045520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: true do |t|
    t.text     "goal"
    t.date     "accomplish_by"
    t.boolean  "is_completed"
    t.date     "completed_on"
    t.integer  "user_id"
    t.integer  "challenge_as_summit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "challenges", ["user_id"], name: "index_challenges_on_user_id", using: :btree

  create_table "milestones", force: true do |t|
    t.text     "step"
    t.date     "complete_by"
    t.boolean  "is_done"
    t.text     "comment"
    t.boolean  "repeat"
    t.integer  "repeat_freq"
    t.integer  "challenge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "milestones", ["challenge_id"], name: "index_milestones_on_challenge_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
