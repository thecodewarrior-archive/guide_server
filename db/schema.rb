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

ActiveRecord::Schema.define(version: 20150317153013) do

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "drafts", force: true do |t|
    t.string   "title"
    t.string   "change_reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drafts_mod_versions", force: true do |t|
    t.integer "mod_version_id"
    t.integer "draft_id"
  end

  add_index "drafts_mod_versions", ["draft_id"], name: "index_drafts_mod_versions_on_draft_id"
  add_index "drafts_mod_versions", ["mod_version_id"], name: "index_drafts_mod_versions_on_mod_version_id"

  create_table "guide_contents", force: true do |t|
    t.integer  "revision_id"
    t.string   "title"
    t.string   "image"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guide_contents", ["revision_id"], name: "index_guide_contents_on_revision_id"

  create_table "guide_images", force: true do |t|
    t.integer  "aspect_ratio"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guide_images_mod_versions", force: true do |t|
    t.integer "mod_version_id"
    t.integer "guide_image_id"
  end

  add_index "guide_images_mod_versions", ["guide_image_id"], name: "index_guide_images_mod_versions_on_guide_image_id"
  add_index "guide_images_mod_versions", ["mod_version_id"], name: "index_guide_images_mod_versions_on_mod_version_id"

  create_table "guide_requirements", force: true do |t|
    t.integer  "guide_content_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guide_requirements", ["guide_content_id"], name: "index_guide_requirements_on_guide_content_id"

  create_table "guide_requirements_mod_versions", force: true do |t|
    t.integer "mod_version_id"
    t.integer "guide_requirement_id"
  end

  add_index "guide_requirements_mod_versions", ["guide_requirement_id"], name: "index_guide_requirements_mod_versions_on_guide_requirement_id"
  add_index "guide_requirements_mod_versions", ["mod_version_id"], name: "index_guide_requirements_mod_versions_on_mod_version_id"

  create_table "guides", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guides_mod_versions", force: true do |t|
    t.integer "mod_version_id"
    t.integer "guide_id"
  end

  add_index "guides_mod_versions", ["guide_id"], name: "index_guides_mod_versions_on_guide_id"
  add_index "guides_mod_versions", ["mod_version_id"], name: "index_guides_mod_versions_on_mod_version_id"

  create_table "id_maps", force: true do |t|
    t.integer  "guide_content_id"
    t.string   "name"
    t.integer  "meta"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "id_maps", ["guide_content_id"], name: "index_id_maps_on_guide_content_id"

  create_table "identifiers", force: true do |t|
    t.string   "name"
    t.string   "modid"
    t.integer  "guide_content_id"
    t.integer  "image_revision_id"
    t.integer  "image_requirement_id"
    t.integer  "guide_requirement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "identifiers", ["guide_content_id"], name: "index_identifiers_on_guide_content_id"
  add_index "identifiers", ["guide_requirement_id"], name: "index_identifiers_on_guide_requirement_id"
  add_index "identifiers", ["image_requirement_id"], name: "index_identifiers_on_image_requirement_id"
  add_index "identifiers", ["image_revision_id"], name: "index_identifiers_on_image_revision_id"

  create_table "image_requirements", force: true do |t|
    t.integer  "guide_content_id"
    t.string   "title"
    t.text     "description"
    t.decimal  "aspect_ratio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "image_requirements", ["guide_content_id"], name: "index_image_requirements_on_guide_content_id"

  create_table "image_requirements_mod_versions", force: true do |t|
    t.integer "mod_version_id"
    t.integer "image_requirement_id"
  end

  add_index "image_requirements_mod_versions", ["image_requirement_id"], name: "index_image_requirements_mod_versions_on_image_requirement_id"
  add_index "image_requirements_mod_versions", ["mod_version_id"], name: "index_image_requirements_mod_versions_on_mod_version_id"

  create_table "image_revisions", force: true do |t|
    t.integer  "guide_image_id"
    t.integer  "number"
    t.string   "file_path"
    t.text     "notes"
    t.text     "changes"
    t.string   "reason"
    t.boolean  "keep_permanently"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "image_revisions", ["guide_image_id"], name: "index_image_revisions_on_guide_image_id"

  create_table "interested_mtom_users", force: true do |t|
    t.integer "unread_by_id"
    t.integer "user_id"
  end

  add_index "interested_mtom_users", ["unread_by_id"], name: "index_interested_mtom_users_on_unread_by_id"
  add_index "interested_mtom_users", ["user_id"], name: "index_interested_mtom_users_on_user_id"

  create_table "mod_versions", force: true do |t|
    t.integer  "guide_id"
    t.integer  "draft_id"
    t.integer  "guide_image_id"
    t.integer  "mod_id"
    t.string   "version_name"
    t.string   "version"
    t.integer  "image_requirement_id"
    t.integer  "guide_requirement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mod_versions", ["draft_id"], name: "index_mod_versions_on_draft_id"
  add_index "mod_versions", ["guide_id"], name: "index_mod_versions_on_guide_id"
  add_index "mod_versions", ["guide_image_id"], name: "index_mod_versions_on_guide_image_id"
  add_index "mod_versions", ["guide_requirement_id"], name: "index_mod_versions_on_guide_requirement_id"
  add_index "mod_versions", ["image_requirement_id"], name: "index_mod_versions_on_image_requirement_id"
  add_index "mod_versions", ["mod_id"], name: "index_mod_versions_on_mod_id"

  create_table "mods", force: true do |t|
    t.string   "mod_name"
    t.string   "modid"
    t.integer  "id_map_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mods", ["id_map_id"], name: "index_mods_on_id_map_id"

  create_table "nbt_tags", force: true do |t|
    t.string   "name"
    t.integer  "type"
    t.string   "value"
    t.integer  "id_map_id"
    t.integer  "nbt_tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nbt_tags", ["id_map_id"], name: "index_nbt_tags_on_id_map_id"
  add_index "nbt_tags", ["nbt_tag_id"], name: "index_nbt_tags_on_nbt_tag_id"

  create_table "revisions", force: true do |t|
    t.integer  "guide_id"
    t.integer  "draft_id"
    t.integer  "number"
    t.text     "notes"
    t.text     "changes"
    t.string   "reason"
    t.integer  "submission_id"
    t.boolean  "keep_permanently"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "revisions", ["draft_id"], name: "index_revisions_on_draft_id"
  add_index "revisions", ["guide_id"], name: "index_revisions_on_guide_id"
  add_index "revisions", ["submission_id"], name: "index_revisions_on_submission_id"

  create_table "submissions", force: true do |t|
    t.integer  "author_id"
    t.integer  "assigned_admin_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "submissions", ["assigned_admin_id"], name: "index_submissions_on_assigned_admin_id"
  add_index "submissions", ["author_id"], name: "index_submissions_on_author_id"

  create_table "unread_bies", force: true do |t|
    t.integer  "guide_id"
    t.integer  "draft_id"
    t.integer  "guide_image_id"
    t.integer  "submission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unread_bies", ["draft_id"], name: "index_unread_bies_on_draft_id"
  add_index "unread_bies", ["guide_id"], name: "index_unread_bies_on_guide_id"
  add_index "unread_bies", ["guide_image_id"], name: "index_unread_bies_on_guide_image_id"
  add_index "unread_bies", ["submission_id"], name: "index_unread_bies_on_submission_id"

  create_table "unread_by_mtom_users", force: true do |t|
    t.integer "unread_by_id"
    t.integer "user_id"
  end

  add_index "unread_by_mtom_users", ["unread_by_id"], name: "index_unread_by_mtom_users_on_unread_by_id"
  add_index "unread_by_mtom_users", ["user_id"], name: "index_unread_by_mtom_users_on_user_id"

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "rank"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
