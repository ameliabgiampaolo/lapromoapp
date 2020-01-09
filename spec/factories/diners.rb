require 'faker'

FactoryBot.define do
  factory :diner do
    name { "dinertestname" }
    last_name { "dinertestlastname"  }
    place_notif { false }
    favorite_notif { false }
    start_price { 0 }
    end_price { rand(1..100) }
    identity_card { Faker::Number.number(digits: 8).to_s }
    gender { ["M", "F"].sample }
    birth_date { Faker::Date.between(from: 60.years.ago, to: 18.years.ago) }
    association :user, factory: :diner_user
    place
  end
end
