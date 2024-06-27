module Api
  module V1
    class CarsController < ApplicationController
      before_action :set_car, only: %i[show update destroy]
      before_action :set_user

      # GET /api/v1/users/:user_id/cars
      def index
        @cars = @user.cars.order(:name)
        render json: @cars
      end

      # GET /api/v1/users/:user_id/cars/:id
      def show
        render json: @car
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Car not found' }, status: :not_found
      end

      # POST /api/v1/users/:user_id/cars
      def create
        @car = @user.cars.build(car_params)

        if @car.save
          render json: @car, status: :created
        else
          render json: @car.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/users/:user_id/cars/:id
      def update
        if @car.update(car_params)
          render json: @car
        else
          render json: @car.errors, status: :unprocessable_entity
        end
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Car not found' }, status: :not_found
      end

      # DELETE /api/v1/users/:user_id/cars/:id
      def destroy
        @car.destroy
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Car not found' }, status: :not_found
      end

      private

      def set_user
        @user = User.find(params[:user_id])
      end

      def set_car
        @car = Car.find(params[:id])
      end

      def car_params
        params.require(:car).permit(:model, :name, :description, :category, :price, :discount, :epa_fuel_economy,
                                    :body_colors, :power_hp, :torque_lb_ft, :engine_type, :acceleration_sec_to_60mph,
                                    :image_url, :thumbnail)
      end
    end
  end
end
