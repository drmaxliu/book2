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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130716042317) do

  create_table "book_pages", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "book_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "chapter_index"
  end

  create_table "book_series", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.integer  "collection_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "description"
    t.string   "book_code"
    t.string   "chinese_code"
    t.string   "name"
    t.string   "logo"
    t.string   "static_link"
  end

  create_table "chapters", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "book_id"
    t.integer  "chapter_no"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "static_link"
    t.integer  "stat_read"
    t.integer  "stat_summary"
    t.integer  "stat_app"
    t.integer  "stat_question"
    t.integer  "stat_note"
    t.integer  "stat_finish"
  end

  create_table "collection_pages", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "collection_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "grp"
  end

  create_table "collections", :force => true do |t|
    t.string   "title"
    t.integer  "book_series_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.text     "description"
    t.string   "logo"
  end

  create_table "comments", :force => true do |t|
    t.integer  "chapter_id"
    t.integer  "verse_from"
    t.integer  "verse_to"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "grp"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "verse_blocks", :force => true do |t|
    t.string   "title"
    t.integer  "verse_from"
    t.integer  "verse_to"
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "chapter_no"
    t.string   "book_code"
  end

  create_table "verses", :force => true do |t|
    t.integer  "verse_no"
    t.integer  "chapter_id"
    t.string   "content_kjv"
    t.string   "content_cuvs"
    t.string   "content_cuvt"
    t.string   "content_revs"
    t.string   "content_revt"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "title"
    t.text     "description"
  end

end
