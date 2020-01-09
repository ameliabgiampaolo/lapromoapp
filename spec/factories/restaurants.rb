require 'faker'

FactoryBot.define do
  factory :restaurant do
    name { 'Test Rest' }  
    address { Faker::Address.full_address  }
    map_location { Faker::Address.latitude.to_s + ',' + Faker::Address.longitude.to_s }
    zip_code { Faker::Number.number(digits: 4) }
    capacity { rand(10...100) }
    description { Faker::Restaurant.description } 
    rif { 'J-' + Faker::Number.unique.number(digits: 8).to_s + '-' + 1.to_s }
    start_time { "09:00:00" }
    end_time { "22:00:00" }
    particular { false }
    association :user, factory: :restaurant_user
    place

    factory :restaurant_with_menu_types_and_plates do
      transient do
        menu_types_count { 5 }
        plates_count { 4 } #number of plates on each menu_type created
      end
      
      after(:create) do |restaurant, evaluator|
        menu_types = create_list(:menu_type, evaluator.menu_types_count, restaurant: restaurant)

        menu_types.each do |menu_type|
          evaluator.plates_count.times do
            create(:plate, menu_type: menu_type)
          end
        end
      end
    end
  end
end
