class V1::AppointmentsController < ApplicationController
  def index

  end

  def show

  end

  def new
    @appointment = Appointment.new(appointment_params)
  end

  def create
    @current_client.appointment.create!(appointment_params)
    json_response(@current_client.appointment, :created)
  end

  def destroy
    
  end

  private

  def appointment_params
    params.require(:user).permit()
  end

  def set_user
    @appointment = Appointment.find(params[:id])
  end

end
