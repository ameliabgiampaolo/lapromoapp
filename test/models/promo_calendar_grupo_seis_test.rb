require 'test_helper'

class PromoCalendarTest < ActiveSupport::TestCase

  #Verificar que no agregue una promocion sin fecha
  test "Prueba fallida, sin fecha" do
    promo_calendar = PromoCalendar.new(promo_id: 1)
    promo_calendar.valid?
    assert_not promo_calendar.errors[:calendar_id].empty?, "INVALIDO, debe tener fecha"
  end

  #Verificar que no agregue una fecha sin promocion
  test "Prueba fallida, sin promocion" do
    promo_calendar = PromoCalendar.new(calendar_id: 1)
    promo_calendar.valid?
    assert_not promo_calendar.errors[:promo_id].empty?, "INVALIDO, debe tener una promocion"
  end
end
