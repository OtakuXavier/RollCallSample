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

ActiveRecord::Schema.define(version: 20160523075351) do

  create_table "roll_calls", force: :cascade do |t|
    t.string   "student_id"
    t.string   "name"
    t.string   "reason"
    t.boolean  "is_rollcall"
    t.string   "captcha"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "student_lists", force: :cascade do |t|
    t.string   "student_id"
    t.string   "name"
    t.string   "student_class"
    t.string   "card_id"
    t.string   "password"
    t.string   "email"
    t.string   "cellphone"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
