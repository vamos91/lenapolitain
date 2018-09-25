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

ActiveRecord::Schema.define(version: 2018_09_25_113731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.string "image"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_forms", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date_depart"
    t.string "date_arrivee"
    t.string "nb_enfant"
    t.string "nb_adulte"
    t.string "age_enfant"
    t.string "destination"
  end

  create_table "croisieres", force: :cascade do |t|
    t.string "photo"
    t.string "titre"
    t.text "description"
    t.string "carte"
    t.string "tarif"
    t.string "duree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "croisiere_destination"
  end

  create_table "photos", force: :cascade do |t|
    t.string "photo1"
    t.string "photo2"
    t.string "photo3"
    t.string "photo4"
    t.bigint "blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_photos_on_blog_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.string "rating"
    t.string "nom"
    t.string "prenom"
    t.bigint "croisiere_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["croisiere_id"], name: "index_reviews_on_croisiere_id"
  end

  add_foreign_key "photos", "blogs"
  add_foreign_key "reviews", "croisieres"
end
