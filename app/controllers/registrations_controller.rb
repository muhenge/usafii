class RegistrationsController < Devise::RegistrationsController
    def create
        # build_resource(sign_up_params)
        # byebug
        # resource.save
        # sign_up(resource_name, resource) if resource.persisted?
    
        # render_jsonapi_response(resource)
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