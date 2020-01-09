FactoryBot.define do
  factory :reservation do
    reservation_date { "2019-11-21 23:37:19" }
    people_num { 1 }
    status { "MyString" }
    promo { nil }
    hist_yumi { nil }
    restaurant { nil }
    diner { nil }
  end
end
