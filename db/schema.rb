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

ActiveRecord::Schema.define(version: 20171022193719) do

  create_table "mails_answers_logs", force: true do |t|
    t.integer  "id_e"
    t.integer  "id_u"
    t.datetime "date_log"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mails_emails", force: true do |t|
    t.integer  "id_e"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mails_move_log", force: true do |t|
    t.integer  "id_e"
    t.integer  "id_u"
    t.datetime "date_log"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statistics", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "id_u"
    t.string   "fio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
