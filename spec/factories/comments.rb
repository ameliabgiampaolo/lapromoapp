FactoryBot.define do
  factory :comment do
    kitchen_rating { 1 }
    ambient_rating { 1 }
    service_rating { 1 }
    description { "MyText" }
    reservation { nil }
  end
end
