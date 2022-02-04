class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def home
    @rockets = Rocket.all
    @rocket = Rocket.new
  end
end
