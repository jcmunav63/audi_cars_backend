class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.datetime :date_reserved
      t.date :reservation_date
      t.time :reservation_time
      t.string :model
      t.string :name
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
