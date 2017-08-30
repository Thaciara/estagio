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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170829015241) do
=======
ActiveRecord::Schema.define(version: 20170828184436) do
>>>>>>> b075287da67bdac779f7f237526fb4edc7c4d1cb

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome", limit: 100, null: false
    t.string "logo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.text "descrição"
    t.string "imagem"
=======
  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.string "image"
    t.boolean "active", default: true
>>>>>>> b075287da67bdac779f7f237526fb4edc7c4d1cb
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
