require 'test_helper'

class Grupo8DinerSubscriptionsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  setup do
    @controller = DinerSubscriptionsController.new
  end

  test "logged_in_diner_users_can_see_their_subscription_page" do
    diner = create(:diner, favorite_notif: false)

    sign_in diner.user

    get :index

    assert_response :success
  end

  test "only_logged_in_diner_users_can_see_their_subscriptions_page" do
    get :index

    assert_redirected_to :new_user_session
  end

  test "only_diner_users_can_access_subscriptions_page" do
    restaurant = create(:restaurant)
    
    sign_in restaurant.user

    get :index

    assert_response 401
  end

  test "logged_in_diners_can_change_their_email_subscriptions" do
    diner = create(:diner, favorite_notif: false)

    sign_in diner.user
    
    patch :update, params: { subscription_type: 'favorite_notif' },  xhr: true

    assert_response :success

    diner.reload

    assert diner.favorite_notif
  end

  test "only_logged_in_diner_users_can_change_their_emails_subscriptions" do
    diner = create(:diner, favorite_notif: false)

    patch :update, params: { subscription_type: 'favorite_notif' },  xhr: true

    assert_response 401

    diner.reload

    assert_not diner.favorite_notif
  end

  test "only_diner_users_change_their_emails_subscriptions" do
    restaurant = create(:restaurant)
    
    sign_in restaurant.user

    patch :update, params: { subscription_type: 'favorite_notif' },  xhr: true

    assert_response 401
  end

  test "if_subscription_type_sent_is_not_valid_an_unprocessable_entity_status_is_returned" do
    diner = create(:diner, favorite_notif: false)

    sign_in diner.user
    
    patch :update, params: { subscription_type: 'non_existent_notif' },  xhr: true

    assert_response 422

    diner.reload

    assert_not diner.favorite_notif
  end
end
