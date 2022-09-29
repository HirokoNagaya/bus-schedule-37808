FactoryBot.define do
  factory :destination do
    month                { '9' }
    long_distance        { '4' }
    middle_distance      { '3' }
    short_distance       { '1' }
    association :user
  end
end
