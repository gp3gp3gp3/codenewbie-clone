# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160120225255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chats", force: :cascade do |t|
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "links", force: :cascade do |t|
    t.string   "title"
    t.string   "url",           null: false
    t.integer  "linkable_id"
    t.string   "linkable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "links", ["linkable_type", "linkable_id"], name: "index_links_on_linkable_type_and_linkable_id", using: :btree

  create_table "podcasts", force: :cascade do |t|
    t.string   "description", null: false
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "podcasts", ["user_id"], name: "index_podcasts_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "body",       null: false
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "stories", force: :cascade do |t|
    t.string   "title",         null: false
    t.integer  "postable_id"
    t.string   "postable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "stories", ["postable_type", "postable_id"], name: "index_stories_on_postable_type_and_postable_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "full_name",       null: false
    t.string   "email",           null: false
    t.string   "twitter_handle"
    t.string   "avatar_url"
    t.string   "bio"
    t.string   "github_username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "podcasts", "users"
  add_foreign_key "posts", "users"
end
