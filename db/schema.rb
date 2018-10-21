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

ActiveRecord::Schema.define(version: 2018_10_21_130207) do

  create_table "deadliests", force: :cascade do |t|
    t.string "EarthquakeCode"
    t.date "Date"
    t.string "Location"
    t.decimal "Longitude"
    t.decimal "Latitude"
    t.integer "deaths"
    t.decimal "Magnitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recordeds", force: :cascade do |t|
    t.date "Date"
    t.time "Time"
    t.decimal "Latitude"
    t.decimal "Longitude"
    t.decimal "Depth"
    t.decimal "Magnitude"
    t.string "MagnitudeType"
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
    t.decimal "FocalDepth"
    t.decimal "Magnitude"
    t.string "Country"
    t.string "Location"
    t.decimal "Latitude"
    t.decimal "Longitude"
    t.decimal "MaximumWaterHeight"
    t.integer "Deaths"
    t.integer "Injuries"
    t.integer "DamageInMillions"
    t.integer "HousesDestroyed"
    t.integer "HausesDamaged"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
