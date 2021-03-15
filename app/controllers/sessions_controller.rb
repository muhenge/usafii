class SessionsController < Devise::SessionsController
  prepend_before_action :require_no_authentication
  prepend_before_action :allow_params_authentication!, only: :create
  prepend_before_action :verify_signed_out_user, only: :destroy
  prepend_before_action(only: [:create, :destroy]) { request.env["devise.skip_timeout"] = true }

    def create
      self.resource = warden.authenticate!(auth_options)
      set_flash_message!(:notice, :signed_in)
      sign_in(resource_name, resource)
      yield resource if block_given?
      render json: {jwt: encode_token({
        id: @user.id,
        username: @user.username
      })}
      
  
    end
end
