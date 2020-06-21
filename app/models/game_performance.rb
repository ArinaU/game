class GamePerformance < ApplicationRecord
  belongs_to :player
  belongs_to :indicator
  belongs_to :team_game

end
