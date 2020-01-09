FactoryBot.define do
  factory :menu_type do
    name { ["entradas", "platos fuertes", "postres", "aves", "carnes", "pescados", "recomendaciones", "bebidas"].sample }
    restaurant
  end
end
