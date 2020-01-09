require 'test_helper'
 
class MailerAdminTest < ActionMailer::TestCase
  test "admin approve" do
    @user = User.create(user_name: "joselito", email: "joselito@gmail.com",
      password: "123456",password_confirmation: "123456", phone: "(424) 164-3223", 
      role_id: 3)
    email = AdminRestaurantMailer.with(user: @user).admin_approve_email
     assert_emails 1 do
      email.deliver_now
    end
  end
  test "admin reject" do
    @user = User.create(user_name: "joselito", email: "joselito@gmail.com",
      password: "123456",password_confirmation: "123456", phone: "(424) 164-3223", 
      role_id: 3)
    email = AdminRestaurantMailer.with(user: @user).admin_reject_email
     assert_emails 1 do
      email.deliver_now
    end
  end
  test "admin cancel" do
    @user = User.create(user_name: "joselito", email: "joselito@gmail.com",
      password: "123456",password_confirmation: "123456", phone: "(424) 164-3223", 
      role_id: 3)
    email = AdminRestaurantMailer.with(user: @user).admin_cancel_email
     assert_emails 1 do
      email.deliver_now
    end
  end
end