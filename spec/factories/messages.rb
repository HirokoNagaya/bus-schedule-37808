FactoryBot.define do
  factory :message do
    content { 'hello' }
    association :user
    association :post
  end
end
