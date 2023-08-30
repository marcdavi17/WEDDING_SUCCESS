class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new # Needed to instantiate the form_with
  end

  def create
    @guest = Guest.new(params[:guest])
    @guest.save # Will raise ActiveModel::ForbiddenAttributesError
  end

  private

  def guest_params
    params.require(:guest).permit(:first_name, :last_name)
  end

end
