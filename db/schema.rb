ActiveRecord::Schema.define(version: 20161017124138) do
  enable_extension "plpgsql"

  create_table "blocks", force: :cascade do |t|
    t.integer  "course_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "block_number"
  end

  create_table "class_codes", force: :cascade do |t|
    t.integer "class_code"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "class_code_id"
    t.string  "course_description"
    t.integer "day_id"
    t.integer "unit"
    t.string  "time_id"
  end

  create_table "days", force: :cascade do |t|
    t.string "day"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_number"
    t.string "type"
  end

  create_table "times", force: :cascade do |t|
    t.string "time"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
