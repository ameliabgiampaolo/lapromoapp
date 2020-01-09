require 'test_helper'

class PromoMailerTest < ActionMailer::TestCase

  test "new_promo_email" do
    promo = create(:promo)
    diner = create(:diner)

    email = PromoMailer.with(promo: promo, diner: diner).new_promo_mail

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ['no-reply@lapromo.com'], email.from
    assert_equal [diner.user.email], email.to
    assert_equal "El restaurant " + promo.restaurant.name + " ha creado una nueva promocion!", email.subject
  end

  test "updated_promo_email" do
    promo = create(:promo)
    diner = create(:diner)

    email = PromoMailer.with(promo: promo, diner: diner).updated_promo_mail

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ['no-reply@lapromo.com'], email.from
    assert_equal [diner.user.email], email.to
    assert_equal "El restaurant " + promo.restaurant.name + " ha actualizado una de sus promociones!", email.subject
  end
end
