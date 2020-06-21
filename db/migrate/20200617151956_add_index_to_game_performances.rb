class AddIndexToGamePerformances < ActiveRecord::Migration[6.0]
  def change
    add_index :game_performances, [:player_id, :indicator_id, :team_game_id], unique: true, name: 'index_game_performances'
  end
end
