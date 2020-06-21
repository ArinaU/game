
player_list = [
    ["Cristiano Ronaldo", 1], # real madrid
    ["Alphonse Areola", 1],
    ["Thibaut Courtois", 1],
    ["Daniel Ramos", 1],
    ["Sergio Garcia", 1],
    ["Eder Gabriel Militao", 1],
    ["Alvaro Arzalluz", 1],
    ["Lionel Messi", 2], # barcelona
    ["Marc-Andre ter Stegen", 2],
    ["Norberto Neto", 2],
    ["Nelson Semedo", 2],
    ["Gerard Bernabeu", 2],
    ["David Beckham", 3], #Manchester United
    ["David de Gea Quintana", 3],
    ["Philip Jones", 3],
    ["Jacob Maguire", 3],
    ["Marcus Rashford", 3]
]


team_list = [
    "Real Madrid",
    "Barcelona",
    "Manchester United"
]

indicator_list = [
    "ran over 10 km",
    "made over 70% accurate passes",
    "made over 90% accurate passes"
]

team_game_list = [
    [2, 3, 0, 3, Date.new(2019,4,16)], # manchester united vs barcelona
    [2, 3, 0, 1, Date.new(2017,7,27)],
    [2, 3, 3, 1, Date.new(2015,7,25)],
    [1, 2, 2, 0, Date.new(2020,3,1)], # real madrid vs barcelona
    [1, 2, 0, 0, Date.new(2019,12,18)],
    [1, 2, 0, 1, Date.new(2019,3,2)],
    [1, 3, 1, 2, Date.new(2018,8,1)], # real madrid vs manchester united
    [1, 3, 2, 1, Date.new(2017,8,8)],
    [1, 3, 1, 1, Date.new(2017,7,23)]
]

# player_id team_game_id indicator_id
game_performance_list = [
    [1, 4, 1], # ronaldo - # real madrid vs barcelona # ran over 10 km
    [1, 5, 1], # made over 70% accurate passes
    [1, 6, 1],
    [1, 7, 1],
    [1, 7, 2],
    [1, 8, 2],
    [2, 6, 1], # Alphonse Areola
    [2, 7, 2],
    [2, 7, 1],
    [4, 6, 1], # Daniel Ramos
    [4, 7, 2],
    [4, 7, 1],
    [8, 3, 2], # messi # made over 70% accurate passes
    [8, 3, 1], # ran over 10 km
    [8, 4, 2], # messi # made over 70% accurate passes
    [8, 4, 1], # ran over 10 km
    [9, 3, 1], # Stegen barcelona # # manchester united vs barcelona #
    [10, 3, 1] # Norberto Neto barcelona # manchester united vs barcelona
]

team_list.each do |name|
  Team.create(team_name: name)
end

player_list.each do |name, team_id|
  Player.create(player_name: name, team_id: team_id)
end

indicator_list.each do |name|
  Indicator.create(indicator_name: name)
end

team_game_list.each do |team1, team2, point1, point2, date|
  TeamGame.create(point1: point1, point2: point2, game_date: date, team1_id: team1, team2_id: team2)
end

game_performance_list.each do |player, game, indicator|
  GamePerformance.create(player_id: player, team_game_id: game, indicator_id: indicator)
end




