class AppointmentsController < ApplicationController
  before_action :set_user, :set_partner

  def index
    @appointments = @user.appointments
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params_appointment)
  end

  private

  def params_appointment
    params.require(:appointment).permit(:schedule_date, :comment, :user_id, :partner_id)
  end

  def set_user
    @user = current_user
  end

  def set_partner
    @partner = Partner.find(params[partner_id])
  end
end
