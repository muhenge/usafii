class ClientsSessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    render json: {jwt: encode_token({
      id: @client.id
    })}
  end
end

