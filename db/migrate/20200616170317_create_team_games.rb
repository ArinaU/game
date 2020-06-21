class CreateTeamGames < ActiveRecord::Migration[6.0]
  def change
    create_table :team_games do |t|
      t.integer "point1", null: false
      t.integer "point2", null: false
      t.date "game_date", null: false
      t.references :team1, foreign_key: { to_table: 'teams', null: false }
      t.references :team2, foreign_key: { to_table: 'teams', null: false }
    end
  end
end
