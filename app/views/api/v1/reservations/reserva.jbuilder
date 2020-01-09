json.reservables @dias do |dia|
    json.dia dia.dia
    json.people dia.people
end
json.diasconpromos @diaspromos do |dia|
    json.id dia.id
    json.final_date dia.final_date
    json.name dia.name
    json.promo_type dia.promo_type
    json.yumis dia.yumis
end
json.restaurant_id @restaurant_info.id
json.start_time @restaurant_info.start_time
json.end_time @restaurant_info.end_time
json.capacity @restaurant_info.capacity
json.error_disponibilidad @errors[:disponibilidad]
json.error_ofertas @errors[:ofertas]