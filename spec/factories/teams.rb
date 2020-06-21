
FactoryBot.define do

  factory :team do
    sequence(:team_name) { |n| "team#{n}" }

  factory :team1 do
    after(:create) do |team|
      create_list(:player, 5, team: team)
    end
  end

  factory :team2 do
      after(:create) do |team|
        create_list(:player, 5, team: team)
      end
  end

  end

end
