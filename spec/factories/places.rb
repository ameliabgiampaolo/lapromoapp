require 'faker'

FactoryBot.define do
  factory :place do
    id { Faker::Number.unique.between(from: 800, to: 1498) }
    name { Faker::Address.full_address  }
    type_place { "" }
    place { nil }
  end
end
