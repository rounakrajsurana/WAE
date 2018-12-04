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

ActiveRecord::Schema.define(version: 2018_11_20_180144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_offerings", force: :cascade do |t|
    t.string "year"
    t.string "semester"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_offerings_on_course_id"
  end

  create_table "course_registrations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "course_offerings_id"
    t.string "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_offerings_id"], name: "index_course_registrations_on_course_offerings_id"
    t.index ["user_id"], name: "index_course_registrations_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_code"
    t.string "course_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "course_offerings", "courses"
  add_foreign_key "course_registrations", "course_offerings", column: "course_offerings_id"
  add_foreign_key "course_registrations", "users"
end
