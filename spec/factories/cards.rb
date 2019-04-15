FactoryBot.define do
  factory :card do
    customer_id {Faker::Lorem.characters(32)}
    user
  end
end
