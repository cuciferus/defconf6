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

ActiveRecord::Schema.define(:version => 20110710135821) do

  create_table "hemo_lunars", :force => true do |t|
    t.date     "data"
    t.float    "hemoglobina"
    t.float    "hematocrit"
    t.float    "hematii"
    t.float    "leucocite"
    t.float    "trombocite"
    t.float    "uree"
    t.float    "creatinina"
    t.float    "sodiu"
    t.float    "potasiu"
    t.float    "tgo"
    t.float    "tgp"
    t.float    "glicemie"
    t.float    "calciu"
    t.float    "fosfor"
    t.float    "inr"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hemo_lunars", ["pacient_id"], :name => "index_hemo_lunars_on_pacient_id"

  create_table "pacients", :force => true do |t|
    t.string   "nume"
    t.string   "prenume"
    t.integer  "cnp"
    t.date     "data_preluarii"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "protocols", :force => true do |t|
    t.date     "data_inceperii"
    t.string   "centru"
    t.string   "tip"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "protocols", ["pacient_id"], :name => "index_protocols_on_pacient_id"

end
