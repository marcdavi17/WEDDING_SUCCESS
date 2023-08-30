class WeddingsController < ApplicationController
  def index
   @weddings = current_user.weddings
  end
end
