
class GamePerformanceQuery

  # игрок выполнил такой-то показатель в матче
  def self.indicator_in_game(player, indicator, game)
    query = GamePerformance.where(player: player, indicator: indicator, team_game: game)
    query.any?
  end

  # проверить выполнил ли игрок конкретный показатель хотя бы 1 раз за предыдущие 5 матчей команды
  def self.indicator_in_five_games?(player, indicator)
    query = GamePerformance.where(player: player).last(3) & GamePerformance.where(player: player, indicator: indicator)
    query.any?
  end

  # выбрать Top-5 игроков по конкретному показателю в конкретной команде # и по всем командам в целом
  def self.top_five_players_by_indicator(indicator, team = nil)
    conditions = { indicator: indicator }
    conditions = conditions.merge({ players: { team: team } }) unless team.nil?
    GamePerformance.joins(:player, :indicator).select("players.player_name, count(*) as number").where(conditions).group([:player_id, :indicator_id, :team_id]).order(Arel.sql('count(*) DESC')).limit(5).each_with_object({}){ |c,h| h[c.player_name] = c.number }
  end

end
