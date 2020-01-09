FactoryBot.define do
  factory :plate do
    name { Faker::Food.dish }
    description { Faker::Food.description }
    price { rand(1..20) }
    menu_type
  end
end
