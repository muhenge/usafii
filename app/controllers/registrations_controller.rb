class RegistrationsController < Devise::RegistrationsController
    def create
        @user = User.new(sign_up_params)
        if @user.save
            render json: {jwt: encode_token({
                id: @user.id,
                username: @user.username
            })}
        else
            render json: @user.errors
        end
    end
end

