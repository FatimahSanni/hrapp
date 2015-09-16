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

ActiveRecord::Schema.define(version: 20150916093620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "announcements", force: :cascade do |t|
    t.string   "topic"
    t.text     "information"
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
    t.integer  "job2"
    t.integer  "work2"
    t.integer  "productivity2"
    t.integer  "dependability2"
    t.integer  "attendance2"
    t.integer  "relation2"
    t.integer  "comment2"
    t.integer  "safety2"
    t.integer  "supervisory2"
    t.text     "staff_comment"
  end

  add_index "appraisals", ["staff_id"], name: "index_appraisals_on_staff_id", using: :btree

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
    t.string   "ancestry"
  end

  add_index "comments", ["ancestry"], name: "index_comments_on_ancestry", using: :btree
  add_index "comments", ["announcement_id"], name: "index_comments_on_announcement_id", using: :btree

  create_table "company_assets", force: :cascade do |t|
    t.string   "name"
    t.integer  "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "company_assets", ["staff_id"], name: "index_company_assets_on_staff_id", using: :btree

  create_table "dependents", force: :cascade do |t|
    t.string   "name"
    t.string   "relationship"
    t.date     "dob"
    t.integer  "staff_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "dependents", ["staff_id"], name: "index_dependents_on_staff_id", using: :btree

  create_table "disciplinary_actions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinary_cases", force: :cascade do |t|
    t.integer  "staff_id"
    t.string   "reason"
    t.text     "report"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "disciplinary_action_id"
    t.boolean  "close",                  default: false, null: false
  end

  add_index "disciplinary_cases", ["disciplinary_action_id"], name: "index_disciplinary_cases_on_disciplinary_action_id", using: :btree
  add_index "disciplinary_cases", ["staff_id"], name: "index_disciplinary_cases_on_staff_id", using: :btree

  create_table "disciplinary_measures", force: :cascade do |t|
    t.integer  "disciplinary_action_id"
    t.text     "comment"
    t.string   "status"
    t.integer  "disciplinary_case_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "disciplinary_measures", ["disciplinary_action_id"], name: "index_disciplinary_measures_on_disciplinary_action_id", using: :btree
  add_index "disciplinary_measures", ["disciplinary_case_id"], name: "index_disciplinary_measures_on_disciplinary_case_id", using: :btree

  create_table "employment_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exit_interviews", force: :cascade do |t|
    t.text     "note"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.boolean  "higher_pay",                     default: false, null: false
    t.boolean  "better_benefits",                default: false, null: false
    t.boolean  "better_career",                  default: false, null: false
    t.boolean  "life_balance",                   default: false, null: false
    t.boolean  "career_change",                  default: false, null: false
    t.boolean  "closer",                         default: false, null: false
    t.boolean  "employee_conflict",              default: false, null: false
    t.boolean  "manager_conflict",               default: false, null: false
    t.boolean  "family",                         default: false, null: false
    t.boolean  "company_instability",            default: false, null: false
    t.boolean  "other",                          default: false, null: false
    t.text     "comment"
    t.string   "job_challenge"
    t.string   "opportunities"
    t.string   "workload"
    t.string   "resources"
    t.string   "colleagues"
    t.string   "skills"
    t.string   "training"
    t.text     "job_comment"
    t.string   "salary"
    t.string   "timely_wage"
    t.string   "benefit"
    t.string   "work_life_balance"
    t.text     "benefit_comment"
    t.string   "orientation"
    t.string   "positive_environment"
    t.string   "adequate_equipment"
    t.string   "get_on"
    t.string   "sufficient_staff"
    t.string   "efficient_company"
    t.string   "internal_communication"
    t.string   "no_bullying"
    t.string   "discrimination"
    t.text     "company_comment"
    t.string   "sufficient_knowledge"
    t.string   "experience"
    t.string   "open"
    t.string   "acknowledge_achievements"
    t.string   "recognise_contributions"
    t.string   "promote_development"
    t.string   "constructive_feedback"
    t.string   "clear_communication"
    t.string   "professional_relationship"
    t.text     "supervisor_comment"
    t.string   "equal_treatment"
    t.string   "discuss_issues"
    t.string   "encourage_feedback"
    t.string   "consistent_policies"
    t.string   "provide_recognition"
    t.string   "gave_development_opportunities"
    t.string   "gave_feedback"
    t.string   "clear_decision"
    t.text     "management_comment"
    t.integer  "staff_id"
  end

  add_index "exit_interviews", ["staff_id"], name: "index_exit_interviews_on_staff_id", using: :btree

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

  create_table "forem_categories", force: :cascade do |t|
    t.string   "name",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.integer  "position",   default: 0
  end

  add_index "forem_categories", ["slug"], name: "index_forem_categories_on_slug", unique: true, using: :btree

  create_table "forem_forums", force: :cascade do |t|
    t.string  "name"
    t.text    "description"
    t.integer "category_id"
    t.integer "views_count", default: 0
    t.string  "slug"
    t.integer "position",    default: 0
  end

  add_index "forem_forums", ["slug"], name: "index_forem_forums_on_slug", unique: true, using: :btree

  create_table "forem_groups", force: :cascade do |t|
    t.string "name"
  end

  add_index "forem_groups", ["name"], name: "index_forem_groups_on_name", using: :btree

  create_table "forem_memberships", force: :cascade do |t|
    t.integer "group_id"
    t.integer "member_id"
  end

  add_index "forem_memberships", ["group_id"], name: "index_forem_memberships_on_group_id", using: :btree

  create_table "forem_moderator_groups", force: :cascade do |t|
    t.integer "forum_id"
    t.integer "group_id"
  end

  add_index "forem_moderator_groups", ["forum_id"], name: "index_forem_moderator_groups_on_forum_id", using: :btree

  create_table "forem_posts", force: :cascade do |t|
    t.integer  "topic_id"
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reply_to_id"
    t.string   "state",       default: "pending_review"
    t.boolean  "notified",    default: false
  end

  add_index "forem_posts", ["reply_to_id"], name: "index_forem_posts_on_reply_to_id", using: :btree
  add_index "forem_posts", ["state"], name: "index_forem_posts_on_state", using: :btree
  add_index "forem_posts", ["topic_id"], name: "index_forem_posts_on_topic_id", using: :btree
  add_index "forem_posts", ["user_id"], name: "index_forem_posts_on_user_id", using: :btree

  create_table "forem_subscriptions", force: :cascade do |t|
    t.integer "subscriber_id"
    t.integer "topic_id"
  end

  create_table "forem_topics", force: :cascade do |t|
    t.integer  "forum_id"
    t.integer  "user_id"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "locked",       default: false,            null: false
    t.boolean  "pinned",       default: false
    t.boolean  "hidden",       default: false
    t.datetime "last_post_at"
    t.string   "state",        default: "pending_review"
    t.integer  "views_count",  default: 0
    t.string   "slug"
  end

  add_index "forem_topics", ["forum_id"], name: "index_forem_topics_on_forum_id", using: :btree
  add_index "forem_topics", ["slug"], name: "index_forem_topics_on_slug", unique: true, using: :btree
  add_index "forem_topics", ["state"], name: "index_forem_topics_on_state", using: :btree
  add_index "forem_topics", ["user_id"], name: "index_forem_topics_on_user_id", using: :btree

  create_table "forem_views", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "viewable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "count",             default: 0
    t.string   "viewable_type"
    t.datetime "current_viewed_at"
    t.datetime "past_viewed_at"
  end

  add_index "forem_views", ["updated_at"], name: "index_forem_views_on_updated_at", using: :btree
  add_index "forem_views", ["user_id"], name: "index_forem_views_on_user_id", using: :btree
  add_index "forem_views", ["viewable_id"], name: "index_forem_views_on_viewable_id", using: :btree

  create_table "interview_candidates", force: :cascade do |t|
    t.string   "name"
    t.integer  "education"
    t.integer  "work"
    t.integer  "job"
    t.integer  "communication"
    t.integer  "initiative"
    t.integer  "enthusiasm"
    t.integer  "company"
    t.string   "remark"
    t.integer  "interview_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "average"
  end

  add_index "interview_candidates", ["interview_id"], name: "index_interview_candidates_on_interview_id", using: :btree

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

  create_table "interviews", force: :cascade do |t|
    t.string   "interviewer"
    t.string   "position"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "impression"
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

  add_index "jobs", ["staff_id"], name: "index_jobs_on_staff_id", using: :btree

  create_table "leave_rules", force: :cascade do |t|
    t.integer  "job_category_id"
    t.integer  "days"
    t.integer  "employment_type_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "leave_rules", ["employment_type_id"], name: "index_leave_rules_on_employment_type_id", using: :btree
  add_index "leave_rules", ["job_category_id"], name: "index_leave_rules_on_job_category_id", using: :btree

  create_table "leave_types", force: :cascade do |t|
    t.string   "name"
    t.string   "number_of_days"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "leaves", force: :cascade do |t|
    t.integer  "leave_type_id"
    t.integer  "staff_id"
    t.date     "starts_at"
    t.date     "to"
    t.text     "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "status"
  end

  add_index "leaves", ["leave_type_id"], name: "index_leaves_on_leave_type_id", using: :btree
  add_index "leaves", ["staff_id"], name: "index_leaves_on_staff_id", using: :btree

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

  create_table "onboardings", force: :cascade do |t|
    t.integer  "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "onboardings", ["staff_id"], name: "index_onboardings_on_staff_id", using: :btree

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

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "staff", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "gender"
    t.string   "emergency_phone"
    t.string   "emergency_name"
    t.string   "emergency_address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "marital_status"
    t.string   "address"
    t.string   "mobile"
    t.string   "email"
    t.string   "relationship"
    t.boolean  "enabled",             default: true,  null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "staff_status"
    t.integer  "user_id"
    t.date     "hire_date"
    t.boolean  "confirmed",           default: false, null: false
    t.string   "line_manager1"
    t.string   "line_manager2"
  end

  add_index "staff", ["user_id"], name: "index_staff_on_user_id", using: :btree

  create_table "subdomains", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "todo"
    t.integer  "onboarding_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "tasks", ["onboarding_id"], name: "index_tasks_on_onboarding_id", using: :btree

  create_table "tools", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",               null: false
    t.string   "encrypted_password",     default: "",               null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "forem_admin",            default: false
    t.string   "forem_state",            default: "pending_review"
    t.boolean  "forem_auto_subscribe",   default: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

  create_table "work_shifts", force: :cascade do |t|
    t.string   "name"
    t.time     "from"
    t.time     "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appraisals", "staff"
  add_foreign_key "comments", "announcements"
  add_foreign_key "company_assets", "staff"
  add_foreign_key "dependents", "staff"
  add_foreign_key "disciplinary_cases", "disciplinary_actions"
  add_foreign_key "disciplinary_cases", "staff"
  add_foreign_key "disciplinary_measures", "disciplinary_actions"
  add_foreign_key "disciplinary_measures", "disciplinary_cases"
  add_foreign_key "exit_interviews", "staff"
  add_foreign_key "interview_candidates", "interviews"
  add_foreign_key "jobs", "staff"
  add_foreign_key "leave_rules", "employment_types"
  add_foreign_key "leave_rules", "job_categories"
  add_foreign_key "leaves", "leave_types"
  add_foreign_key "leaves", "staff"
  add_foreign_key "onboardings", "staff"
  add_foreign_key "tasks", "onboardings"
end
