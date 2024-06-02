class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :name, :description, :category, :price, :discount,
             :epa_fuel_economy, :body_colors, :power_hp, :torque_lb_ft, :engine_type,
             :acceleration_sec_to_60mph, :user_id
end
