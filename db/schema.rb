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

ActiveRecord::Schema.define(version: 2021_09_10_155615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "backgrounds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "total_hp"
    t.float "experience"
    t.bigint "race_id", null: false
    t.bigint "sub_race_id", null: false
    t.bigint "class_job_id", null: false
    t.bigint "sub_class_job_id", null: false
    t.bigint "background_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "player"
    t.index ["background_id"], name: "index_characters_on_background_id"
    t.index ["class_job_id"], name: "index_characters_on_class_job_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
    t.index ["sub_class_job_id"], name: "index_characters_on_sub_class_job_id"
    t.index ["sub_race_id"], name: "index_characters_on_sub_race_id"
  end

  create_table "class_jobs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub_class_jobs", force: :cascade do |t|
    t.string "name"
    t.bigint "class_job_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["class_job_id"], name: "index_sub_class_jobs_on_class_job_id"
  end

  create_table "sub_races", force: :cascade do |t|
    t.string "name"
    t.bigint "race_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["race_id"], name: "index_sub_races_on_race_id"
  end

  add_foreign_key "characters", "backgrounds"
  add_foreign_key "characters", "class_jobs"
  add_foreign_key "characters", "races"
  add_foreign_key "characters", "sub_class_jobs"
  add_foreign_key "characters", "sub_races"
  add_foreign_key "sub_class_jobs", "class_jobs"
  add_foreign_key "sub_races", "races"
end
