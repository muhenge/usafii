class ApplicationController < ActionController::API
    before_action :configure_devise_parameters, if: :devise_controller?
    
    def render_jsonapi_response(resource)
        if resource.errors.empty?
          render jsonapi: resource
        else
          render jsonapi_errors: resource.errors, status: 400
        end
    end 

    
    protected
    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname,:username,:about])
        # devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :username,:firstname,:career_id,:lastname,:bio, :about ,:password,:current_password,:password_confirmation])
    end
end
