# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100305063352) do

  create_table "answers", :force => true do |t|
    t.string   "answer_type"
    t.text     "theanswer"
    t.integer  "user_id"
    t.integer  "mcquestion_id"
    t.integer  "textquestion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mcanswers", :force => true do |t|
    t.boolean  "answered",      :default => false
    t.boolean  "theanswer_1",   :default => false
    t.boolean  "theanswer_2",   :default => false
    t.boolean  "theanswer_3",   :default => false
    t.boolean  "theanswer_4",   :default => false
    t.boolean  "theanswer_5",   :default => false
    t.integer  "user_id"
    t.integer  "mcquestion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mcquestions", :force => true do |t|
    t.text     "question_text"
    t.text     "question_comment"
    t.string   "question_type",    :default => "mc"
    t.text     "answer_1"
    t.text     "answer_2"
    t.text     "answer_3"
    t.text     "answer_4"
    t.text     "answer_5"
    t.boolean  "multipleanswers",  :default => false
    t.integer  "survey_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question360s", :force => true do |t|
    t.text     "question_text"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.string   "question_number"
    t.string   "question_type"
    t.text     "question_comment"
    t.text     "question_text"
    t.integer  "survey_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "surveys", :force => true do |t|
    t.text     "survey_name"
    t.date     "survey_date"
    t.string   "survey_creator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "textanswers", :force => true do |t|
    t.text     "theanswer"
    t.integer  "user_id"
    t.integer  "textquestion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "textquestions", :force => true do |t|
    t.text     "question_text"
    t.text     "question_comment"
    t.string   "question_type",    :default => "text"
    t.integer  "survey_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tsanswers", :force => true do |t|
    t.integer  "theanswer",     :limit => 10, :precision => 10, :scale => 0
    t.integer  "user_id"
    t.integer  "tsquestion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tsquestions", :force => true do |t|
    t.text     "question_text"
    t.text     "question_comment"
    t.integer  "survey_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
