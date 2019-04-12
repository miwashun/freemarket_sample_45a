FactoryGirl.define do
  factory :item do
    name              Faker::Lorem.characters(16)
    price             Faker::Number.number(10)
    detail            Faker::Lorem.characters
    category_id       Faker::Number.number(1)
    subcategory_id    Faker::Number.number(1)
    subsubcategory_id Faker::Number.number(1)
    brand_id          Faker::Number.number(1)
    prefecture_id     Faker::Number.between(1, 48)
    condition_id      Faker::Number.between(1, 5)
    shipping_date_id  Faker::Number.between(1, 3)
    status            0
    user
  end
end