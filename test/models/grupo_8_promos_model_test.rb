require 'test_helper'

class Grupo8PromosTest < ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  include ActionMailer::TestHelper
  include ActionMailer::TestCase::Behavior
  
  test "when_a_promo_is_created_send_new_promo_emails_must_be_called" do
    promo = build(:promo_with_plates_and_calendar)
    promo.expects(:send_new_promo_emails)
    
    promo.save

    promo.expects(:send_new_promo_emails).never
    promo.save
  end

  test "send_new_promo_emails_sends_email_to_diners_that_have_that_restaurant_as_favorite_and_want_those_notifications" do
    promo = build(:promo_with_plates_and_calendar)

    restaurant = promo.restaurant

    diner_a = create(:diner, favorite_notif: true)
    diner_b = create(:diner, favorite_notif: true)

    diner_c = create(:diner, favorite_notif: false)
    diner_d = create(:diner, favorite_notif: false)

    favorite_a = create(:favorite, diner: diner_a, restaurant: restaurant)
    favorite_b = create(:favorite, diner: diner_b, restaurant: restaurant)
    favorite_c = create(:favorite, diner: diner_c, restaurant: restaurant)
    favorite_d = create(:favorite, diner: diner_d, restaurant: restaurant)
    
    promo.save

    
    assert_emails 2
  end

  test "when_a_promo_is_updated_check_if_emails_must_be_sent_must_be_called" do
    promo = create(:promo_with_plates_and_calendar)

    promo.expects(:check_if_emails_must_be_sent)
    promo.save
  end

  test "when_a_promo_name_is_updated_send_updated_promo_emails_must_be_called" do
    promo = create(:promo_with_plates_and_calendar)

    promo.name = "New name"
    promo.expects(:send_updated_promo_emails)
    promo.save
  end

  test "when_a_promo_type_is_updated_send_updated_promo_emails_must_be_called" do
    promo = create(:promo_with_plates_and_calendar)

    promo.promo_type = "New promo type"
    promo.expects(:send_updated_promo_emails)
    promo.save
  end

  test "when_a_promo_description_is_updated_send_updated_promo_emails_must_be_called" do
    promo = create(:promo_with_plates_and_calendar)

    promo.description = "New description"
    promo.expects(:send_updated_promo_emails)
    promo.save
  end

  test "when_a_promo_yumis_field_is_updated_send_updated_promo_emails_must_be_called" do
    promo = create(:promo_with_plates_and_calendar)

    promo.yumis = true
    promo.expects(:send_updated_promo_emails)
    promo.save
  end

  test "when_a_promo_has_its_plates_updated_send_updated_promo_emails_must_be_called" do
    promo = create(:promo_with_plates_and_calendar)

    promo.plates =  promo.plates[1..-2] # removed two plates from the promo
    promo.expects(:send_updated_promo_emails)
    promo.save

    promo.plates.push(create(:plate))
    promo.expects(:send_updated_promo_emails)
    promo.save
  end

  test "when_a_promo_has_its_calendars_updated_send_updated_promo_emails_must_be_called" do
    promo = create(:promo_with_plates_and_calendar)

    promo.calendars =  promo.calendars[1..-2] # removed two calendars from the promo
    promo.expects(:send_updated_promo_emails)
    promo.save
    
    promo.calendars.push(create(:calendar))
    promo.expects(:send_updated_promo_emails)
    promo.save
  end

  test "send_updated_promo_emails_sends_email_to_diners_that_have_that_restaurant_as_favorite_and_want_those_notifications" do
    promo = build(:promo_with_plates_and_calendar)
    promo.expects(:send_new_promo_emails)
    promo.save

    restaurant = promo.restaurant

    diner_a = create(:diner, favorite_notif: true)
    diner_b = create(:diner, favorite_notif: true)

    diner_c = create(:diner, favorite_notif: false)
    diner_d = create(:diner, favorite_notif: false)

    favorite_a = create(:favorite, diner: diner_a, restaurant: restaurant)
    favorite_b = create(:favorite, diner: diner_b, restaurant: restaurant)
    favorite_c = create(:favorite, diner: diner_c, restaurant: restaurant)
    favorite_d = create(:favorite, diner: diner_d, restaurant: restaurant)

    promo.name = "New name"
    
    promo.save
    
    assert_emails 2
  end
end
