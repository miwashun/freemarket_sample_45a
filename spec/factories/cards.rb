FactoryBot.define do
  factory :card do
    customer_id Faker::Lorem.charactors(32)
    user
  end
end
