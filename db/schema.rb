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

ActiveRecord::Schema.define(version: 20140720113451) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "active_admin_gallery_images", force: true do |t|
    t.integer "imageable_id"
    t.string  "imageable_type"
    t.string  "imageable_relation"
    t.string  "alt"
    t.string  "title"
    t.string  "image_name"
    t.string  "image_uid"
    t.integer "position"
    t.integer "image_width"
    t.integer "image_height"
    t.float   "image_aspect_ratio"
    t.integer "image_depth"
    t.string  "image_format"
    t.string  "image_mime_type"
    t.string  "image_size"
  end

  add_index "active_admin_gallery_images", ["imageable_id", "imageable_type", "imageable_relation"], name: "active_admin_gallery_images_imageable"

  create_table "active_admin_seo_meta", force: true do |t|
    t.string   "slug"
    t.string   "title"
    t.string   "description"
    t.string   "keywords"
    t.string   "og_title"
    t.string   "og_type"
    t.string   "og_image_uid"
    t.string   "og_url"
    t.integer  "seoable_id"
    t.string   "seoable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "og_description"
    t.string   "og_site_name"
  end

  add_index "active_admin_seo_meta", ["seoable_id", "seoable_type"], name: "active_admin_seo_meta_seoable"

  create_table "admin_users", force: true do |t|
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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "categories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "categories_projects", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "project_id"
  end

  create_table "category_translations", force: true do |t|
    t.integer  "category_id", null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "category_translations", ["category_id"], name: "index_category_translations_on_category_id"
  add_index "category_translations", ["locale"], name: "index_category_translations_on_locale"

  create_table "page_translations", force: true do |t|
    t.integer  "page_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "content"
    t.string   "date"
  end

  add_index "page_translations", ["locale"], name: "index_page_translations_on_locale"
  add_index "page_translations", ["page_id"], name: "index_page_translations_on_page_id"

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_translations", force: true do |t|
    t.integer  "project_id",  null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "subtitle"
    t.string   "equipe"
    t.text     "description"
    t.string   "date"
  end

  add_index "project_translations", ["locale"], name: "index_project_translations_on_locale"
  add_index "project_translations", ["project_id"], name: "index_project_translations_on_project_id"

  create_table "projects", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

end
