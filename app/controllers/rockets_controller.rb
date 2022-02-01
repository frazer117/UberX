class RocketsController < ApplicationController
before_action :set_rocket, only: [:show, :update, :edit, :destroy]

  def index
    @rockets = Rocket.all
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
    params.require(:rocket).permit(:name, :description, :price, :capacity, :range, :power, :is_available)
  end
end
