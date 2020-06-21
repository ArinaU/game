
FactoryBot.define do

  factory :player do
    sequence(:player_name) { |n| "player#{n}" }
    team
  end

end
