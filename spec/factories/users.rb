require 'faker'

FactoryBot.define do
  factory :user do
    email	{ Faker::Internet.email  }
    password	{ Faker::Internet.password }
    user_name	{ Faker::Internet.username(specifier: 8, separators: %w()) }
    phone	{ "(424) 164-3223" }
    is_google	{ false }
    approved	{ true }
    confirmed_at { Time.now }

    after(:build)  { |user| user.password_confirmation = user.password }
    
    factory :admin_user do
      association :role, factory: :role, name: "Administrador"
    end

    factory :restaurant_user do
      association :role, factory: :role, name: "Restaurante"
    end

    factory :diner_user do
      association :role, factory: :role, name: "Comensal"
    end
  end
end
