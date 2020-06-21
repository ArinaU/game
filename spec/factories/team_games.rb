
FactoryBot.define do

  factory :team_game do
    point1 { 1 }
    point2 { 0 }
    game_date { Faker::Date.between(from: 12.months.ago, to: Date.today) }
    association :team1, factory: :team
    association :team2, factory: :team
    # factory :game1 do
    #   after(:create) do |game|
    #     # create_list(:player, 5, team: team)
    #     create(:team1, )
    #   end
    # end

  end

end

