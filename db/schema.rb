# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_12_22_223729) do

  create_table "meal_plans", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_meals"
    t.integer "restaurant_id"
    t.integer "price"
    t.integer "subscribers"
    t.boolean "subscription_status"
  end

  create_table "restaurant_requests", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "creator"
  end

  create_table "restaurant_votes", force: :cascade do |t|
    t.integer "vote"
    t.integer "restaurant_request_id"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "tag"
    t.string "logo_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
    t.string "bio"
  end

end
