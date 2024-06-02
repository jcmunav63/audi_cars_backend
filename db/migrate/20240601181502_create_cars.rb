class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :category
      t.float :price
      t.float :discount
      t.float :epa_fuel_economy
      t.string :body_colors
      t.float :power_hp
      t.float :torque_lb_ft
      t.string :engine_type
      t.float :acceleration_sec_to_60mph

      t.timestamps
    end
  end
end
