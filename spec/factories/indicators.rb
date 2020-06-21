

FactoryBot.define do

  factory :indicator do
    sequence(:indicator_name) { |n| "indicator#{n}" }

  end

end

