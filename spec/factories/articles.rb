FactoryBot.define do
  factory :article do
    title { "MyString" }
    description { "MyText" }
    cont_trend { "MyString" }
    user { nil }
    topic { nil }
  end
end
