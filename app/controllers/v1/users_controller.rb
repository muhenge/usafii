class V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json: {data:@users}
    end

    def show
    end

    private

    def user_params
        params.require(:user).permit(:email, :username, :firstname, :lastname, :about, :client_id)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
