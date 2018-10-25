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

ActiveRecord::Schema.define(version: 2018_10_24_141950) do

  create_table "deadly_quakes", force: :cascade do |t|
    t.string "EqCode"
    t.date "Date"
    t.string "Location"
    t.decimal "Longitude"
    t.decimal "Latitude"
    t.integer "Deaths"
    t.decimal "Magnitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "earthquake_data", force: :cascade do |t|
    t.date "Date"
    t.time "Time"
    t.decimal "Latitude"
    t.decimal "Longitude"
    t.integer "Depth"
    t.string "Magnitude"
    t.string "Type"
    t.string "SourceId"
    t.string "Source"
    t.string "SameDayAs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tsunamis", force: :cascade do |t|
    t.date "Date"
    t.time "Time"
    t.string "SameDayAs"
    t.integer "Focal_Depth"
    t.decimal "Primary_Magnitude"
    t.string "Country"
    t.string "Location_Name"
    t.decimal "Latitude"
    t.decimal "Longitude"
    t.decimal "Maximun_Water_Height"
    t.integer "Total_Deaths"
    t.integer "Total_Injuries"
    t.decimal "Total_Damage_Million_Dollars"
    t.integer "Total_Houses_Destroyed"
    t.integer "Total_Houses_Damaged"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
