class AppointmentsController < ApplicationController
  before_action :set_user, only: %i[new create]
  before_action :set_partner, only: %i[new create]

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params_appointment)
    @appointment.partner = @partner
    @appointment.user = @user

    if @appointment.save
      redirect_to appointments_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])

    @appointment.destroy
    redirect_to appointments_path, status: :see_other
  end

  private

  def params_appointment
    params.require(:appointment).permit(:schedule_date, :comment, :user_id, :partner_id)
  end

  def set_user
    @user = current_user
  end

  def set_partner
    @partner = Partner.find(params[:partner_id])
  end
end
