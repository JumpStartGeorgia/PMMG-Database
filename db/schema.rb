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

ActiveRecord::Schema.define(:version => 20120923130403) do

  create_table "call1s", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "dname"
    t.integer  "pname"
    t.boolean  "c_label"
    t.integer  "d_label"
    t.integer  "e_label"
    t.integer  "f_label"
    t.boolean  "g_label"
    t.boolean  "h_label"
    t.string   "k_label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call2s", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "dname"
    t.integer  "pname"
    t.integer  "label_l"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call3s", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "dname"
    t.integer  "pname"
    t.integer  "label_m"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call4s", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "dname"
    t.integer  "pname"
    t.string   "label_n"
    t.string   "label_p"
    t.string   "label_q"
    t.string   "label_r"
    t.string   "label_s"
    t.string   "label_t"
    t.string   "label_u"
    t.string   "label_z"
    t.string   "label_ab"
    t.string   "label_ac"
    t.boolean  "label_ad"
    t.boolean  "label_af"
    t.boolean  "label_ag"
    t.boolean  "label_ah"
    t.string   "label_ak"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call5s", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "dname"
    t.integer  "pname"
    t.boolean  "label_al"
    t.boolean  "label_am"
    t.boolean  "label_an"
    t.boolean  "label_ap"
    t.boolean  "label_aq"
    t.boolean  "label_ar"
    t.boolean  "label_as"
    t.boolean  "label_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call6s", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "dname"
    t.integer  "pname"
    t.boolean  "label_a"
    t.boolean  "label_b"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "role",                   :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
