json.id @restaurant.id
json.name @restaurant.name
json.description @restaurant.description
json.address @restaurant.address
json.map_location @restaurant.map_location
json.start_time @restaurant.start_time
json.end_time @restaurant.end_time
json.created_at @restaurant.created_at
json.kitchen_score @restaurant_calif[:kitchen_avg]
json.ambient_score @restaurant_calif[:ambient_avg]
json.service_score @restaurant_calif[:service_avg]
json.total_score @total_calif
json.comment_count @comment_count
json.direction @place
json.platos @plates do |plate|
    json.id plate.id
    json.name plate.name
    json.description plate.description
    json.price plate.price
end
json.promos @promos do |promo|
    json.id promo.id
    json.name promo.name
    json.yumis promo.yumis
    json.promo_type promo.promo_type
    json.description promo.description
end
json.photos @photos do |photo|
    json.id photo.id
    json.image photo.photo
end
json.comments @comments do |comment|
    json.id comment.id
    json.description comment.description
    json.kitchen_rating comment.kitchen_rating
    json.ambient_rating comment.ambient_rating
    json.service_rating comment.service_rating
    json.created_at comment.created_at.strftime("%d/%m/%Y")
    json.user_name comment.reservation.diner.name
    json.user_lastname comment.reservation.diner.last_name
end
json.place_name @place.name
json.phone @usuario.phone
json.score_5 @per_score_count[:five]
json.score_4 @per_score_count[:four]
json.score_3 @per_score_count[:three]
json.score_2 @per_score_count[:two]
json.score_1 @per_score_count[:one]
json.error_description @errors[:description]
json.error_plate @errors[:plate]
json.error_comment @errors[:comment]

