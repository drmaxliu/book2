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

ActiveRecord::Schema.define(:version => 20130811232611) do

  create_table "bible_notes", :force => true do |t|
    t.integer  "chapter_id"
    t.integer  "verse_from"
    t.integer  "verse_to"
    t.text     "note"
    t.integer  "praise_count"
    t.integer  "usage"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "book_pages", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "book_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "chapter_index"
    t.integer  "grp"
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
    t.integer  "verse_from"
    t.integer  "verse_to"
    t.text     "content"
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
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "light_id"
    t.integer  "user_id"
    t.boolean  "voted"
  end

  create_table "critics", :force => true do |t|
    t.string   "title"
    t.string   "category"
    t.text     "content"
    t.integer  "user_id"
    t.string   "html_path"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "group_members", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "joined"
    t.date     "join_date"
    t.date     "exit_date"
    t.boolean  "group_leader"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "group_id"
  end

  create_table "groups", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "active"
    t.date     "last_active"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lead_readers", :force => true do |t|
    t.integer  "user_id"
    t.text     "bio"
    t.integer  "follower_count"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "lights", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "book_code"
    t.integer  "chapter_no"
    t.integer  "verse_from"
    t.integer  "verse_to"
    t.integer  "praise_count"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
    t.integer  "usage"
  end

  create_table "reading_histories", :force => true do |t|
    t.string   "page_type"
    t.string   "page_code"
    t.integer  "page_no"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.string   "html_path"
  end

  create_table "reading_notes", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.string   "book_code"
    t.integer  "chapter_no"
    t.integer  "verse_from"
    t.integer  "verse_to"
    t.string   "html_path"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reading_plans", :force => true do |t|
    t.integer  "user_id"
    t.string   "book_code"
    t.date     "target_date"
    t.date     "finish_date"
    t.text     "read_record"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "lead_reader_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "relationships", ["follower_id", "lead_reader_id"], :name => "index_relationships_on_follower_id_and_lead_reader_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"
  add_index "relationships", ["lead_reader_id"], :name => "index_relationships_on_lead_reader_id"

  create_table "salts", :force => true do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.string   "title"
    t.text     "content"
    t.string   "book_code"
    t.integer  "chapter_no"
    t.integer  "verse_from"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "verse_to"
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
