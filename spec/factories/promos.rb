FactoryBot.define do
  factory :promo do
    name { "Promo Navidad/Vacaciones/Comienzo-Clases 50%" }
    promo_type { "50" }
    description { "50% de descuento en los platos indicados" }
    yumis { false }
    restaurant

    factory :promo_with_plates_and_calendar do
      transient do
        plates_count { 10 } #number of plates on each menu_type created
      end
  
      after(:build) do |promo, evaluator|
        promo.restaurant = create(:restaurant_with_menu_types_and_plates)
      end
  
      after(:create) do |promo, evaluator|
        evaluator.plates_count.times do 
          # pick a random plate from the restaurant
          create(:promo_plate, promo: promo, plate: promo.restaurant.menu_types.sample.plates.sample)
        end

        # create dates from today to a week
        (0..7).each do |i|
          create(:promo_calendar, promo: promo, calendar: create(:calendar, final_date: Date.current + i.days));
        end
      end
    end
  end
end
