class RegistrationsController < Devise::RegistrationsController
    def create
        @user = User.new(sign_up_params)
        if @user.save
            render json: {jwt: encode_token({
                id: @client.id
            })}
        else
            render json: @user.errors
        end
    end
end

