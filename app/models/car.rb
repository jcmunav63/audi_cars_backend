class Car < ApplicationRecord
  belongs_to :user

  validates :model, :name, :user_id, :description, :category, :price, presence: true
end
