class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car
  belongs_to :city

  validates :reservation_date, :reservation_time, :name, presence: true
end
