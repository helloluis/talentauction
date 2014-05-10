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

ActiveRecord::Schema.define(version: 20140510115712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "equipment", force: true do |t|
    t.text     "description"
    t.hstore   "listed_specs"
    t.hstore   "actual_specs"
    t.string   "itemcode"
    t.date     "installed_at"
    t.date     "replaced_at"
    t.date     "failure_mode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "equipment", ["itemcode"], name: "index_equipment_on_itemcode", using: :btree

  create_table "professional_profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "firstname"
    t.string   "surname"
    t.integer  "professional_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professional_profiles", ["professional_id"], name: "index_professional_profiles_on_professional_id", using: :btree

  create_table "professional_requirements", force: true do |t|
    t.integer  "professional_id"
    t.float    "minimum_annual_salary"
    t.string   "salary_currency"
    t.text     "summary"
    t.text     "ideal_job_summary"
    t.text     "additional_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professional_requirements", ["professional_id"], name: "index_professional_requirements_on_professional_id", using: :btree

  create_table "recruiter_profiles", force: true do |t|
    t.integer  "recruiter_id"
    t.string   "company_name"
    t.string   "company_size"
    t.string   "industry"
    t.string   "country"
    t.string   "city"
    t.text     "summary"
    t.text     "additional_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recruiter_profiles", ["recruiter_id"], name: "index_recruiter_profiles_on_recruiter_id", using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree

  create_table "tags", force: true do |t|
    t.string "name"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
