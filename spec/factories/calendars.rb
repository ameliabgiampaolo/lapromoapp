FactoryBot.define do
  factory :calendar do
    final_date { Faker::Time.forward(days: 30) }
  end
end
