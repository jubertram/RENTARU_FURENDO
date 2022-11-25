class PartnersController < ApplicationController
  before_action :set_partner, only: [:show, :edit, :update, :destroy]
  def index
    @partners = Partner.all

    if params[:interest].present?
      @partners = Partner.where(interest: params[:interest])
    end
    if params[:temperament].present?
      @partners = Partner.where(temperament: params[:temperament])
    end

    # The `geocoded` scope filters only partners with coordinates
    @markers = @partners.geocoded.map do |partner|
      {
        lat: partner.latitude,
        lng: partner.longitude,
        image_url: helpers.cloudinary_url(partner.photo_url.key)
      }
    end
  end

  def show
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

  def edit
  end

  def update
    if @partner.update(partner_params)
      redirect_to @partner, notice: 'Your Profile Was Successfully Updated!'
    else
      render :edit
    end
  end

  def destroy
    @partner.destroy
    redirect_to partners_path, status: :see_other
  end

  private

  def set_partner
    @partner = Partner.find(params[:id])
  end

  def partner_params
    params.require(:partner).permit(:first_name, :last_name, :gender, :address, :temperament, :interest, :age, :photo_url)
  end
end
