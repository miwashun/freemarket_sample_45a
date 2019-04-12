FactoryGirl.define do
  factory :user do
    password = Faker::Internet.password(8)
    password              password
    password_confirmation password

    nickname      Faker::Name.last_name
    email         Faker::Internet.free_email
    phone_number  Faker::Base.numerify('###########')
    birth_year_id Faker::Number.between(1,100)
    birth_month   Faker::Number.between(1,12)
    birth_day     Faker::Number.between(1,30)

    name = Gimei.name
    last_name       gimei_name.last.kanji
    last_name       gimei_name.last.katakana
    first_name      gimei_name.first.kanji
    first_name_kana gimei_name.first.katakana
  end
end