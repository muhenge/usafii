class ClientsRegistrationsController < Devise::RegistrationsController
    def create
        @client = Client.new(sign_up_params)
        if @client.save
            render json: {jwt: encode_token({
                id: @client.id,
                email: @client.email,
                client_username: @client.client_username
            })}
        else
            render json: @client.errors
        end
    end
end