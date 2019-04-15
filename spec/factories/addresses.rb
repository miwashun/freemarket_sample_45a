FactoryBot.define do
  factory :address do
    zip {Faker::Number.number(7)}
    prefecture_id {Faker::Number.between(1, 48)}
    phone_number  {Faker::Base.numerify('###########')}
    
    gimei_address = Gimei.address
    address_detail {gimei_address.city.to_s + gimei_address.town.to_s}
    
    gimei_name = Gimei.name
    name {gimei_name.kanji}
    name_kana {gimei_name.katakana}

    user
  end
end