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

ActiveRecord::Schema.define(version: 20171116155051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "loans", force: :cascade do |t|
    t.integer "amount_in_cents"
    t.string "body"
    t.string "status", default: "Pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "lender_id"
    t.integer "tip_in_cents"
    t.index ["user_id"], name: "index_loans_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.integer "role"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.string "date_of_birth"
    t.string "last_four_of_ssn"
  end

  add_foreign_key "loans", "users"
end
