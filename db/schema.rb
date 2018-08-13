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

ActiveRecord::Schema.define(version: 20180813151655) do

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.string   "brief_info"
    t.text     "detail_info"
    t.string   "mini_pic_path"
    t.string   "master_pic_path"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["title"], name: "index_blogs_on_title"
  end

  create_table "label_blogs", force: :cascade do |t|
    t.integer "label_id"
    t.integer "blog_id"
    t.index ["label_id", "blog_id"], name: "index_label_blogs_on_label_id_and_blog_id", unique: true
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.string "explain"
  end

end
