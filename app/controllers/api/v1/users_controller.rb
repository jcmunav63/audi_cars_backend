module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: %i[show update destroy]

      # Disable CSRF protection for API requests
      if respond_to?(:verify_authenticity_token)
        skip_before_action :verify_authenticity_token, only: %i[create update destroy]
      end

      # GET /api/v1/users SHOW ALL USERS
      def index
        @users = User.order(:id)
        render json: @users, status: :ok, each_serializer: UserSerializer
      end

      # POST /api/v1/users CREATE A NEW USER
      def create
        @user = User.new(user_params)
        if @user.save
          render json: @user, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # PUT /api/v1/users/:id UPDATE AN EXISTENT USER
      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          render json: @user, status: :ok
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'User not found' }, status: :not_found
      end

      # GET /api/v1/users/:id SHOW ONE USER
      def show
        render json: @user, status: :ok
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'User not found' }, status: :not_found
      end

      # DELETE /api/v1/users/:id DESTROY AN EXISTENT USER
      def destroy
        @user = User.find(params[:id])
        @user.destroy
        head :no_content
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'User not found' }, status: :not_found
      end

      private

      def set_user
        @user = User.find(params[:id])
      end

      # User parameters for creating & updating User
      def user_params
        params.require(:user).permit(:email, :name, :password)
      end
    end
  end
end
