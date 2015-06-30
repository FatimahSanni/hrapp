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

ActiveRecord::Schema.define(version: 20150627122400) do

  create_table "actions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "announcements", force: :cascade do |t|
    t.string   "topic"
    t.string   "information"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "appraisals", force: :cascade do |t|
    t.integer  "staff_id"
    t.date     "from"
    t.date     "to"
    t.string   "appraisal_type"
    t.integer  "job_knowledge"
    t.integer  "quality_of_work"
    t.integer  "productivity"
    t.integer  "dependability"
    t.integer  "attendance"
    t.integer  "relation_with_others"
    t.integer  "commitment_with_safety"
    t.integer  "supervisory_ability"
    t.integer  "overall"
    t.text     "comment"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "appraisals", ["staff_id"], name: "index_appraisals_on_staff_id"

  create_table "candidates", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "announcement_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "comments", ["announcement_id"], name: "index_comments_on_announcement_id"

  create_table "dependents", force: :cascade do |t|
    t.string   "name"
    t.string   "relationship"
    t.date     "dob"
    t.integer  "staff_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "dependents", ["staff_id"], name: "index_dependents_on_staff_id"

  create_table "disciplinary_actions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinary_cases", force: :cascade do |t|
    t.integer  "staff_id"
    t.string   "reason"
    t.text     "report"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "disciplinary_cases", ["staff_id"], name: "index_disciplinary_cases_on_staff_id"

  create_table "disciplinary_measures", force: :cascade do |t|
    t.integer  "disciplinary_action_id"
    t.text     "comment"
    t.string   "status"
    t.integer  "disciplinary_case_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "disciplinary_measures", ["disciplinary_action_id"], name: "index_disciplinary_measures_on_disciplinary_action_id"
  add_index "disciplinary_measures", ["disciplinary_case_id"], name: "index_disciplinary_measures_on_disciplinary_case_id"

  create_table "employment_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "file_uploads", force: :cascade do |t|
    t.string   "name"
    t.text     "remark"
    t.string   "upload_file_name"
    t.string   "upload_content_type"
    t.integer  "upload_file_size"
    t.datetime "upload_updated_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "interview_reports", force: :cascade do |t|
    t.string   "name"
    t.integer  "education"
    t.integer  "work"
    t.integer  "job_knowledge"
    t.integer  "communication"
    t.integer  "initiative"
    t.integer  "enthusiasm"
    t.integer  "company_knowledge"
    t.text     "note"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "job_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_titles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "note"
    t.date     "date"
    t.text     "specification"
    t.integer  "staff_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "jobs", ["staff_id"], name: "index_jobs_on_staff_id"

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.string   "phone"
    t.string   "email"
    t.text     "comment"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

# Could not dump table "staff" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "work_shifts", force: :cascade do |t|
    t.string   "name"
    t.time     "from"
    t.time     "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
