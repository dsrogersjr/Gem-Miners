<<<<<<< HEAD
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

ActiveRecord::Schema.define(:version => 20100328071517) do

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "forums", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string "name"
  end

  create_table "groups_users", :id => false, :force => true do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  add_index "groups_users", ["group_id"], :name => "index_groups_users_on_group_id"
  add_index "groups_users", ["user_id"], :name => "index_groups_users_on_user_id"

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

  create_table "messages", :force => true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "topic_id"
    t.integer  "user_id"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
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

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.integer  "last_poster_id"
    t.datetime "last_post_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "forum_id"
    t.integer  "user_id"
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
=======
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

ActiveRecord::Schema.define(:version => 20100328071517) do

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "forums", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string "name"
  end

  create_table "groups_users", :id => false, :force => true do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  add_index "groups_users", ["group_id"], :name => "index_groups_users_on_group_id"
  add_index "groups_users", ["user_id"], :name => "index_groups_users_on_user_id"

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

  create_table "messages", :force => true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "topic_id"
    t.integer  "user_id"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
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
    t.text     "survey_intro"
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

  create_table "threesixties", :force => true do |t|
    t.string   "threesixty_name"
    t.text     "threesixty_intro"
    t.string   "threesixty_creator"
    t.date     "threesixty_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "threesixtyanswers", :force => true do |t|
    t.boolean  "theanswer_1"
    t.boolean  "theanswer_2"
    t.boolean  "theanswer_3"
    t.boolean  "theanswer_4"
    t.integer  "user_id"
    t.integer  "threesixtyq_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "threesixtyqs", :force => true do |t|
    t.text     "question_text"
    t.string   "question_comment", :default => "0 = Minimal Effort, 3 = Exemplary"
    t.string   "answer_1",         :default => "0"
    t.string   "answer_2",         :default => "1"
    t.string   "answer_3",         :default => "2"
    t.string   "answer_4",         :default => "3"
    t.integer  "threesixty_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "threesixtytextas", :force => true do |t|
    t.text     "theanswer"
    t.integer  "user_id"
    t.integer  "threesixtytextq_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "threesixtytextqs", :force => true do |t|
    t.text     "question_text"
    t.text     "question_comment"
    t.integer  "threesixty_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.integer  "last_poster_id"
    t.datetime "last_post_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "forum_id"
    t.integer  "user_id"
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

  create_table "usersurveys", :force => true do |t|
    t.boolean  "taken"
    t.integer  "user_id"
    t.integer  "survey_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
>>>>>>> origin/version2
