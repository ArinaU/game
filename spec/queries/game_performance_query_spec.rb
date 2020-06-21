require 'rails_helper'
require 'byebug'

RSpec.describe GamePerformanceQuery do

  let(:ronaldo) { Player.find_by_player_name("Cristiano Ronaldo") }
  let(:indicator_10km) { Indicator.find_by_indicator_name("ran over 10 km") }
  let(:indicator_90passes) { Indicator.find_by_indicator_name("made over 90% accurate passes") }
  let(:team_madrid) { Team.find_by_team_name("Real Madrid") }
  let(:team_barcelona) { Team.find_by_team_name("Barcelona") }
  let(:game_mad_barc) { TeamGame.where(team1: team_madrid, team2: team_barcelona) }

  it 'player fulfilled such indicator in the match' do
    result = GamePerformanceQuery.indicator_in_game(ronaldo, indicator_10km, game_mad_barc)
    expect(result).to eq true
  end

  it 'player did not fulfill such indicator in the match' do
    result = GamePerformanceQuery.indicator_in_game(ronaldo, indicator_90passes, game_mad_barc)
    expect(result).to eq false
  end

  it 'checks 1 indicator in 5 games' do
    result = GamePerformanceQuery.indicator_in_five_games?(ronaldo, indicator_10km)
    expect(result).to eq true
  end

  it 'checks that no indicators in 5 games' do
    result = GamePerformanceQuery.indicator_in_five_games?(ronaldo, indicator_90passes)
    expect(result).to eq false
  end


  it 'top-5 players by concrete indicator and team' do
    result = GamePerformanceQuery.top_five_players_by_indicator(indicator_10km, team_madrid)
    expect(result.length).to eq 3
  end

  it 'top-5 players by concrete indicator in all teams' do
    result = GamePerformanceQuery.top_five_players_by_indicator(indicator_10km)
    expect(result.length).to eq 5
  end

  it 'no players by concrete indicator' do
    result = GamePerformanceQuery.top_five_players_by_indicator(indicator_90passes)
    expect(result.length).to eq 0
  end

  it 'no players by concrete indicator in all teams' do
    result = GamePerformanceQuery.top_five_players_by_indicator(indicator_90passes)
    expect(result.length).to eq 0
  end

end
