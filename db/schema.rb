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

ActiveRecord::Schema.define(version: 2019_03_13_053255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archives", force: :cascade do |t|
    t.string "name"
    t.string "typ"
    t.date "creationdate"
    t.string "location"
    t.string "tamaño"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_archives_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_categories_on_ancestry"
  end

  create_table "has_folders", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "archive_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["archive_id"], name: "index_has_folders_on_archive_id"
    t.index ["category_id"], name: "index_has_folders_on_category_id"
  end

  add_foreign_key "archives", "categories"
  add_foreign_key "has_folders", "archives"
  add_foreign_key "has_folders", "categories"
end
