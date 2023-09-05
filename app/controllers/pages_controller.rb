class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @wedding = current_user.weddings.last
    
    @markers = [
      {
        lat: @wedding.latitude,
        lng: @wedding.longitude
      }
    ]
  end
end
