class RegistrationsController < Devise::RegistrationsController
    def create
        @user = User.new(sign_up_params)
        if @user.save
            render json: {jwt: encode_token({
                id: @user.id
            })}
        else
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end
    end
end

