class V1::AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :update, :destroy]
  before_action :authenticate_client!, only: [:create]
  # GET /v1/appointments
  def index
    @appointments = Appointment.all

    render json: @appointments
  end

  # GET /v1/appointments/1
  def show
    render json: @appointment
  end

  # POST /v1/appointments
  def create
    @appointment = current_client.appointment.build(appointment_params)
    byebug
    if @appointment.save
      render json: @appointment, status: :created, location: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/appointments/1
  def update
    if appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/appointments/1
  def destroy
    @appointment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.fetch(@appointment, {})
    end
end
