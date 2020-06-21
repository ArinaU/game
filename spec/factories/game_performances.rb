

FactoryBot.define do

  factory :game_performance do

    association :player, factory: :team
    association :team_game, factory: :team_game
    association :indicator, factory: :indicator

    #factory :game_performance_list do
    #
    #   after(:create) do |p|
    #     indicator1 = create(:indicator)
    #     indicator2 = create(:indicator)
    #     player1 = create(:player)
    #     player2 = create(:player)
    #
    #     create_list(:game_performance, 6).each_with_index do |game, i|
    #       game.team_game = create(:team_game)
    #       if i < 2
    #         game.player = player1
    #         game.indicator = indicator1
    #       else
    #         game.player = player2
    #         game.indicator = indicator2
    #       end
    #       create(game)
    #     end
    #
    #   end
    #
    # end

    # indicator1 = create(:indicator)
    # indicator2 = create(:indicator)
    # player1 = create(:player)
    # player2 = create(:player)
    # game1 = create(:team_game)
    # game2 = create(:team_game)
    #
    # after_create do |p|
    #
    # end
  end
  #end

end
