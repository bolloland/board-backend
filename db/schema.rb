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

ActiveRecord::Schema.define(version: 2021_12_06_194133) do

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.integer "year_published"
    t.integer "min_player"
    t.integer "max_player"
    t.integer "min_time"
    t.integer "max_time"
    t.integer "age"
    t.text "description"
    t.string "thumb_url"
    t.string "image_url"
    t.decimal "avg_rating", precision: 10, scale: 3
    t.integer "review_count"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "game_id"
    t.text "rev_text"
    t.integer "rating"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
