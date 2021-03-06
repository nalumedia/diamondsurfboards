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

ActiveRecord::Schema.define(version: 20160403215419) do

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "video"
  end

  create_table "boards", force: true do |t|
    t.string   "board_name"
    t.text     "board_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "waveheightlogo_file_name"
    t.string   "waveheightlogo_content_type"
    t.integer  "waveheightlogo_file_size"
    t.datetime "waveheightlogo_updated_at"
    t.string   "rockerlogo_file_name"
    t.string   "rockerlogo_content_type"
    t.integer  "rockerlogo_file_size"
    t.datetime "rockerlogo_updated_at"
    t.string   "skilllogo_file_name"
    t.string   "skilllogo_content_type"
    t.integer  "skilllogo_file_size"
    t.datetime "skilllogo_updated_at"
    t.string   "triimage_file_name"
    t.string   "triimage_content_type"
    t.integer  "triimage_file_size"
    t.datetime "triimage_updated_at"
    t.string   "category"
    t.integer  "type_id"
  end

  create_table "bootsy_image_galleries", force: true do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: true do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.text     "contact_help"
    t.text     "contact_notes"
    t.string   "contact_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dimensions", force: true do |t|
    t.string   "length"
    t.string   "width"
    t.string   "thickness"
    t.integer  "board_id"
    t.string   "volume"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "type_name"
    t.text     "type_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
