module Api
  module V1
    class ReservationsController < ApplicationController
      before_action :set_user
      before_action :set_car, only: %i[show create destroy update]
      before_action :set_reservation, only: %i[show update destroy]

      # GET /api/v1/users/:user_id/reservations
      def index
        @reservations = @user.reservations
        render json: @reservations
      end

      # POST /api/v1/users/:user_id/cars/:car_id/reservations
      def create
        @reservation = @user.reservations.build(reservation_params)
        @reservation.car = @car

        if @reservation.save
          render json: @reservation, status: :created
        else
          render json: @reservation.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/users/:user_id/cars/:car_id/reservations/:id
      def update
        if @reservation.update(reservation_params)
          render json: @reservation
        else
          render json: @reservation.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/users/:user_id/cars/:car_id/reservations/:id
      def destroy
        @reservation.destroy
      end

      # GET /api/v1/users/:user_id/cars/:id
      def show
        render json: @car, status: :ok
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Reservation not found' }, status: :not_found
      end

      private

      def set_user
        @user = User.find(params[:user_id])
      end

      def set_car
        @car = @user.cars.find(params[:car_id])
      end

      def set_reservation
        @reservation = @user.reservations.find(params[:id])
      end

      def reservation_params
        params.require(:reservation).permit(:date_reserved, :reservation_date, :reservation_time,
                                            :model, :name, :city_id)
      end
    end
  end
end
