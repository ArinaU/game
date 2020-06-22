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

ActiveRecord::Schema.define(version: 2020_06_22_070023) do

  create_table "game_performances", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "indicator_id", null: false
    t.integer "team_game_id", null: false
    t.index ["indicator_id"], name: "index_game_performances_on_indicator_id"
    t.index ["player_id", "indicator_id", "team_game_id"], name: "index_game_performances", unique: true
    t.index ["player_id"], name: "index_game_performances_on_player_id"
    t.index ["team_game_id"], name: "index_game_performances_on_team_game_id"
  end

  create_table "indicators", force: :cascade do |t|
    t.string "indicator_name", null: false
    t.index ["indicator_name"], name: "index_indicators_on_indicator_name", unique: true
  end

  create_table "players", force: :cascade do |t|
    t.string "player_name", null: false
    t.integer "team_id", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "team_games", force: :cascade do |t|
    t.integer "point1", null: false
    t.integer "point2", null: false
    t.date "game_date", null: false
    t.integer "team1_id"
    t.integer "team2_id"
    t.index ["team1_id"], name: "index_team_games_on_team1_id"
    t.index ["team2_id"], name: "index_team_games_on_team2_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name", null: false
    t.index ["team_name"], name: "index_teams_on_team_name", unique: true
  end

  add_foreign_key "game_performances", "indicators"
  add_foreign_key "game_performances", "players"
  add_foreign_key "game_performances", "team_games"
  add_foreign_key "players", "teams"
  add_foreign_key "team_games", "teams", column: "team1_id"
  add_foreign_key "team_games", "teams", column: "team2_id"
end
