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

ActiveRecord::Schema.define(version: 20200412231641) do

  create_table "Friend", force: :cascade do |t|
    t.boolean "staus",   default: false
    t.integer "User_id"
    t.index ["User_id"], name: "index_Friend_on_User_id"
  end

  create_table "Group", force: :cascade do |t|
    t.string  "name"
    t.integer "User_id"
    t.index ["User_id"], name: "index_Group_on_User_id"
  end

  create_table "GroupFriend", force: :cascade do |t|
    t.integer "Friend_id"
    t.integer "Group_id"
    t.index ["Friend_id"], name: "index_GroupFriend_on_Friend_id"
    t.index ["Group_id"], name: "index_GroupFriend_on_Group_id"
  end

  create_table "User", force: :cascade do |t|
    t.string   "Fname"
    t.text     "Lname"
    t.text     "email",      null: false
    t.text     "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
