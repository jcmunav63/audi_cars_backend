class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :car_id, :date_reserved, :reservation_date,
             :reservation_time, :model, :name, :city_id
end
