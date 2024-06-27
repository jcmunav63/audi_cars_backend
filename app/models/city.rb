class City < ApplicationRecord
  belongs_to :state
  has_many :reservations

  validates :name, presence: true
end
