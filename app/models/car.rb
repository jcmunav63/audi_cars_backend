class Car < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :model, :name, :user_id, :description, :category, :price, presence: true
end
