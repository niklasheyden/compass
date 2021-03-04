# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_04_155947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "habits", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.integer "intervall_num"
    t.string "intervall_period"
    t.boolean "reminder"
    t.boolean "monday"
    t.boolean "tuesday"
    t.boolean "wednesday"
    t.boolean "thursday"
    t.boolean "friday"
    t.boolean "saturday"
    t.boolean "sunday"
    t.bigint "week_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["week_id"], name: "index_habits_on_week_id"
  end

  create_table "key_results", force: :cascade do |t|
    t.string "title"
    t.integer "target_num"
    t.integer "current_num"
    t.bigint "life_goal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["life_goal_id"], name: "index_key_results_on_life_goal_id"
  end

  create_table "life_goals", force: :cascade do |t|
    t.string "title"
    t.string "color"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
    t.index ["user_id"], name: "index_life_goals_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "description"
    t.string "category"
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_notes_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "color"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.string "color"
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_tags_on_project_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "priority"
    t.string "status"
    t.date "deadline"
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "title"
    t.string "color"
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_themes_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "week_events", force: :cascade do |t|
    t.string "title"
    t.string "weekday"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "week_id", null: false
    t.index ["week_id"], name: "index_week_events_on_week_id"
  end

  create_table "week_goals", force: :cascade do |t|
    t.string "title"
    t.boolean "completed"
    t.string "priority"
    t.bigint "week_id", null: false
    t.bigint "project_id", null: false
    t.bigint "life_goal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["life_goal_id"], name: "index_week_goals_on_life_goal_id"
    t.index ["project_id"], name: "index_week_goals_on_project_id"
    t.index ["week_id"], name: "index_week_goals_on_week_id"
  end

  create_table "weeks", force: :cascade do |t|
    t.integer "week_num"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_weeks_on_user_id"
  end

  add_foreign_key "habits", "weeks"
  add_foreign_key "key_results", "life_goals"
  add_foreign_key "life_goals", "users"
  add_foreign_key "notes", "projects"
  add_foreign_key "projects", "users"
  add_foreign_key "tags", "projects"
  add_foreign_key "tasks", "projects"
  add_foreign_key "themes", "projects"
  add_foreign_key "week_events", "weeks"
  add_foreign_key "week_goals", "life_goals"
  add_foreign_key "week_goals", "projects"
  add_foreign_key "week_goals", "weeks"
  add_foreign_key "weeks", "users"
end
