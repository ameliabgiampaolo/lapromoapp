# Preview all emails at http://localhost:3000/rails/mailers/promo_mailer
class PromoMailerPreview < ActionMailer::Preview
    include FactoryBot::Syntax::Methods
    
    def new_promo_mail
        diner = create(:diner)
        promo = create(:promo)

        PromoMailer.with(diner: diner, promo: promo).new_promo_mail
    end

    def updated_promo_mail
        diner = create(:diner)
        promo = create(:promo)

        PromoMailer.with(diner: diner, promo: promo).updated_promo_mail
    end
end
