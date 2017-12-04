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

ActiveRecord::Schema.define(version: 20171127063522) do

  create_table "courses", force: :cascade do |t|
    t.string   "id_code"
    t.string   "name"
    t.text     "description"
    t.integer  "year"
    t.string   "semester"
    t.integer  "professor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["professor_id"], name: "index_courses_on_professor_id"
  end

  create_table "courses_students", id: false, force: :cascade do |t|
    t.integer "course_id",  null: false
    t.integer "student_id", null: false
    t.index ["course_id", "student_id"], name: "index_courses_students_on_course_id_and_student_id"
    t.index ["student_id", "course_id"], name: "index_courses_students_on_student_id_and_course_id"
  end

  create_table "input_and_output_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "inputs", force: :cascade do |t|
    t.integer  "input_and_output_type_id"
    t.integer  "process_object_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["input_and_output_type_id"], name: "index_inputs_on_input_and_output_type_id"
    t.index ["process_object_id"], name: "index_inputs_on_process_object_id"
  end

  create_table "knowledge_area_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "outputs", force: :cascade do |t|
    t.integer  "input_and_output_type_id"
    t.integer  "process_object_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["input_and_output_type_id"], name: "index_outputs_on_input_and_output_type_id"
    t.index ["process_object_id"], name: "index_outputs_on_process_object_id"
  end

  create_table "pmboks", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "process_groups_count", default: 0
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "process_group_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "process_groups", force: :cascade do |t|
    t.integer  "pmbok_id"
    t.integer  "process_group_type_id"
    t.integer  "process_objects_count", default: 0
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["pmbok_id"], name: "index_process_groups_on_pmbok_id"
    t.index ["process_group_type_id"], name: "index_process_groups_on_process_group_type_id"
  end

  create_table "process_objects", force: :cascade do |t|
    t.integer  "process_group_id"
    t.integer  "knowledge_area_type_id"
    t.string   "version"
    t.string   "name"
    t.text     "description"
    t.integer  "inputs_count",               default: 0
    t.integer  "tools_and_techniques_count", default: 0
    t.integer  "outputs_count",              default: 0
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["knowledge_area_type_id"], name: "index_process_objects_on_knowledge_area_type_id"
    t.index ["process_group_id"], name: "index_process_objects_on_process_group_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.string   "name"
    t.string   "surname"
    t.string   "second_surname"
    t.string   "avatar_url"
    t.boolean  "administrator",          default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["confirmation_token"], name: "index_professors_on_confirmation_token"
    t.index ["email"], name: "index_professors_on_email"
    t.index ["invitation_token"], name: "index_professors_on_invitation_token"
    t.index ["reset_password_token"], name: "index_professors_on_reset_password_token"
    t.index ["unlock_token"], name: "index_professors_on_unlock_token"
  end

  create_table "students", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "username",               default: "", null: false
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
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "name"
    t.string   "surname"
    t.string   "second_surname"
    t.string   "avatar_url"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["confirmation_token"], name: "index_students_on_confirmation_token"
    t.index ["email"], name: "index_students_on_email"
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token"
    t.index ["unlock_token"], name: "index_students_on_unlock_token"
    t.index ["username"], name: "index_students_on_username"
  end

  create_table "tool_and_technique_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tools_and_techniques", force: :cascade do |t|
    t.integer  "tool_and_technique_type_id"
    t.integer  "process_object_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["process_object_id"], name: "index_tools_and_techniques_on_process_object_id"
    t.index ["tool_and_technique_type_id"], name: "index_tools_and_techniques_on_tool_and_technique_type_id"
  end

end
