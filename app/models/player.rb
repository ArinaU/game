class Player < ApplicationRecord
  belongs_to :team
  has_many :game_performances
  has_many :indicators, through: :game_performances
  has_many :team_games, through: :game_performances

end