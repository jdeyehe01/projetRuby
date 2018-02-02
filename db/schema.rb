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

ActiveRecord::Schema.define(version: 20180124072712) do

  create_table "auteurs", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "description"
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "url"
  end

  create_table "mangas", force: :cascade do |t|
    t.string "title"
    t.string "title_traduction"
    t.date "realise_date"
    t.integer "tome_number"
    t.integer "genre_id"
    t.integer "image_id"
    t.integer "auteur_id"
    t.index ["auteur_id"], name: "index_mangas_on_auteur_id"
    t.index ["genre_id"], name: "index_mangas_on_genre_id"
    t.index ["image_id"], name: "index_mangas_on_image_id"
  end

end
