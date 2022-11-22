class PartnersController < ApplicationController
  def index
    @partners = Partner.all
  end

  def show
    @partner = Partner.find(params[:id])
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(partner_params)
    @partner.user = current_user
    if @partner.save
      redirect_to partner_path(@partner)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @partner.destroy
    redirect_to partner_path(@partner.list), status: :see_other
  end

  private

  def set_partner
    @partner = Partner.find(params[:id])
  end

  def partner_params
    params.require(:partner).permit(:first_name, :last_name, :gender, :address, :temperament, :interest, :age, :photo_url)
  end
end
