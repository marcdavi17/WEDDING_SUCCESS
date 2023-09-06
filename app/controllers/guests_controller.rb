class GuestsController < ApplicationController

  def index
    @wedding = Wedding.find(params[:wedding_id])
    # @guests = @wedding.guests.all
    @guests = Guest.all
    # @family = Family.new
  end

  def new
    @guest = Guest.new # Needed to instantiate the form_with
  end

  def create
    @wedding = Wedding.find(params[:wedding_id])
    @guest = Guest.new(guest_params)
    @guest.save! # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to wedding_families_path(@wedding)
  end

  def destroy
    @wedding = Wedding.find(params[:wedding_id])
    @guest = Guest.find(params[:id])
    @guest.destroy
    redirect_to wedding_families_path(@wedding)
  end

  private

  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :age_category, :gender, :witness, :status, :family_id, :spouse_id)
  end
end
