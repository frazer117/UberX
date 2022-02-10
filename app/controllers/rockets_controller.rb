class RocketsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]
before_action :set_rocket, only: [:show, :update, :edit, :destroy]

  def index
    if params[:query].present?
      @rockets = Rocket.global_search(params[:query])
    else
      @rockets = Rocket.all
      @markers = @rockets.geocoded.map do |rocket|
      {
        lat: rocket.latitude,
        lng: rocket.longitude,
        info_window: render_to_string(partial: "info_window", locals: { rocket: rocket }),
        image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @rocket = Rocket.new
  end

  def create
    @rocket = Rocket.new(rocket_params)
    @rocket.user = current_user
    if @rocket.save
      redirect_to rocket_path(@rocket)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if
      @rocket.update(rocket_params)
      redirect_to rocket_path(@rocket)
    else
      render :index
    end
  end

  def destroy
    @rocket.destroy
    redirect_to rockets_path
  end

private

  def set_rocket
    @rocket = Rocket.find(params[:id])
  end

  def rocket_params
    params.require(:rocket).permit(:name, :description, :price, :capacity, :range, :power, :is_available, :photo)
  end
end
