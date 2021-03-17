class UsersController < ApplicationController
    before_action :set_user, only: %i[show]

    def index
        @users = User.all
        render json:{data: @users}, status: :ok
    end

    def show
        render json:{data: @user}, status: :ok
    end
    
    private

    def user_params
        params.require(:user).permit(:email, :username, :firstname, :lastname, :about, :client_id)
    end

    private

    def set_user
        @user = User.find(params[:id])
    end
end
