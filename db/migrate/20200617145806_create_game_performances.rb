class CreateGamePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :game_performances do |t|
      t.references :player, foreign_key: true, null: false
      t.references :indicator, foreign_key: true, null: false
      t.references :team_game, foreign_key: true, null: false
    end
  end
end
