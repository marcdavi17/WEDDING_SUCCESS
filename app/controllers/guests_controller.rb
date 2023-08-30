class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new # Needed to instantiate the form_with
  end

  def create
    @guest = Guest.new(guest_params)
    @guest.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to action: "index"
  end

  private

  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :age_category, :gender, :witness, :status, :family)
  end

end
