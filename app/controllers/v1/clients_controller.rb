class V1::ClientsController < ApplicationController
    
    def index
        @clients = Client.all
        render json: {data:@clients}
    end
    
    def show
        
    end

    private

    def user_params
        params.require(:client).permit(:email, :appointment_id)
    end

    private

    def set_user
        @client = Client.find(params[:id])
    end
end
