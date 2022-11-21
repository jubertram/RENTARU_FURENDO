class AppointmentsController < ApplicationController
  before_action :set_user
  before_action :set_partner, only: %i[new create]

  def index
    @appointments = @user.appointments
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params_appointment)
    @appointment.partner = @partner
    @appointment.user = @user

    if @appointment.save
      redirect_to partner_path(@partner)
    else
      render :new, status: :unprocessable_entity
    end
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
