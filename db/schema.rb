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

ActiveRecord::Schema.define(version: 2021_12_17_090148) do

  create_table "equipement_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "equipements", force: :cascade do |t|
    t.string "name"
    t.integer "equipement_categorie_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equipement_categorie_id"], name: "index_equipements_on_equipement_categorie_id"
  end

  create_table "location_options", force: :cascade do |t|
    t.integer "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "option_id"
    t.index ["option_id"], name: "index_location_options_on_option_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
  end
  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "equipements", "equipement_categories", column: "equipement_categorie_id"
  add_foreign_key "location_options", "options"
end
