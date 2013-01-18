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

ActiveRecord::Schema.define(:version => 20130118094101) do

  create_table "cursoacademicos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "laboratorios", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "laboratorios_peticionsoftwares", :id => false, :force => true do |t|
    t.integer "laboratorio_id"
    t.integer "peticionsoftware_id"
  end

  add_index "laboratorios_peticionsoftwares", ["laboratorio_id", "peticionsoftware_id"], :name => "indice"

  create_table "peticionsoftwares", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.string   "asignatura"
    t.string   "titulacion"
    t.string   "curso"
    t.string   "sistemaoperativo"
    t.text     "software"
    t.string   "dondeobtener"
    t.date     "fechacomienzo"
    t.text     "comentario"
    t.datetime "fechayhora"
    t.integer  "cursoacademico_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "peticionsoftwares", ["cursoacademico_id"], :name => "index_peticionsoftwares_on_cursoacademico_id"
  add_index "peticionsoftwares", ["user_id"], :name => "index_peticionsoftwares_on_user_id"

  create_table "requests", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "date"
    t.integer  "owner_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",                               :null => false
    t.string   "email"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "locked_at"
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
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
