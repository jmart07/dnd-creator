# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_08_141057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "char_classes", force: :cascade do |t|
    t.string "name"
    t.integer "modifier"
    t.integer "primary_abilities", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "class_joins", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "char_class_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["char_class_id"], name: "index_class_joins_on_char_class_id"
    t.index ["character_id"], name: "index_class_joins_on_character_id"
  end

  create_table "race_joins", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "race_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_race_joins_on_character_id"
    t.index ["race_id"], name: "index_race_joins_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.integer "ability_buff", array: true
    t.integer "speed"
    t.string "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "class_joins", "char_classes"
  add_foreign_key "class_joins", "characters"
  add_foreign_key "race_joins", "characters"
  add_foreign_key "race_joins", "races"
end
