class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

<<<<<<< HEAD
  def home
  end
=======
>>>>>>> a053b72052a46a45343100d82273316eea075307
end
