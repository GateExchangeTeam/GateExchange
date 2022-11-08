# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_08_151613) do
  create_table "comments", force: :cascade do |t|
    t.string "text_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.integer "course_code"
    t.text "description"
    t.string "department"
    t.string "faculty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nested_comments", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comment_id"
    t.index ["comment_id"], name: "index_nested_comments_on_comment_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "view"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
    t.index ["course_id"], name: "index_posts_on_course_id"
  end

  create_table "posts_tags", id: false, force: :cascade do |t|
    t.integer "posts_id"
    t.integer "tags_id"
    t.index ["posts_id"], name: "index_posts_tags_on_posts_id"
    t.index ["tags_id"], name: "index_posts_tags_on_tags_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "up"
    t.integer "down"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id"
    t.integer "comment_id"
    t.index ["comment_id"], name: "index_ratings_on_comment_id"
    t.index ["post_id"], name: "index_ratings_on_post_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
