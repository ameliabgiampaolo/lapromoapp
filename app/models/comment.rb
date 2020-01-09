class Comment < ApplicationRecord
  belongs_to :reservation

  scope :kitchen_score, ->(id) {joins("JOIN reservations ON comments.reservation_id = reservations.id AND reservations.restaurant_id = " + id).distinct('comments.id').select('comments.*').average("kitchen_rating")}
  scope :ambient_score, ->(id) {joins("JOIN reservations ON comments.reservation_id = reservations.id AND reservations.restaurant_id = " + id).distinct('comments.id').select('comments.*').average("ambient_rating")}
  scope :service_score, ->(id) {joins("JOIN reservations ON comments.reservation_id = reservations.id AND reservations.restaurant_id = " + id).distinct('comments.id').select('comments.*').average("service_rating")}
  scope :comments_of_restaurant, ->(id) {joins("JOIN reservations ON comments.reservation_id = reservations.id AND reservations.restaurant_id = " + id).distinct('comments.id').select('comments.*')}
  # scopes grupo 5
  scope :avg_kitchen_score_rest, -> (id) { where(reservation_id: Reservation.where(restaurant_id: Restaurant.where(id: id).pluck('id')).pluck('id')).average('kitchen_rating') }
  scope :avg_ambient_score_rest, -> (id) { where(reservation_id: Reservation.where(restaurant_id: Restaurant.where(id: id).pluck('id')).pluck('id')).average('ambient_rating') }
  scope :avg_service_score_rest, -> (id) { where(reservation_id: Reservation.where(restaurant_id: Restaurant.where(id: id).pluck('id')).pluck('id')).average('service_rating') }
  scope :number_comments_rest, -> (id) { where(reservation_id: Reservation.where(restaurant_id: Restaurant.where(id: id).pluck('id')).pluck('id')).count('id') }
end
