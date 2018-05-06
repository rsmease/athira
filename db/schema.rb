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

ActiveRecord::Schema.define(version: 20180506154558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "headline", default: "", null: false
    t.text "long_description", default: "", null: false
    t.text "short_description", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "splash_image_url", default: "", null: false
  end

  create_table "image_carousels", force: :cascade do |t|
    t.string "location", null: false
    t.string "urls", default: [], null: false, array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaders", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "title", default: "", null: false
    t.text "description", default: "", null: false
    t.string "headshot_url", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "reviewer_name"
    t.string "reviewer_description"
    t.string "reviewer_location"
    t.string "title", default: "", null: false
    t.text "body", default: "", null: false
    t.string "other_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.text "short_description", default: "", null: false
    t.string "icon_url"
    t.string "other_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "long_description", default: "", null: false
  end

end
