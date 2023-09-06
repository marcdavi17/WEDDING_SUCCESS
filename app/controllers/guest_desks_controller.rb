class GuestDesksController < ApplicationController
  def index
    @guest_desks = GuestDesk.all
  end

  def affect
    @wedding = Wedding.find(params[:id])
    @guest_desks = @wedding.guest_desks
  end
  # def new
  #   @desk = Desk.new
  # end

  def create
    @wedding = Wedding.find(params[:wedding_id])
    @guest_desk = GuestDesk.new(guest_desk_params)
    # @desk.wedding = current_user.weddings.last
    if @guest_desk.save
      redirect_to wedding_desks_path(@wedding, desk_id: @guest_desk.desk_id)
    else
      render :new
    end
  end

  # def show
  #   @guest_desks = GuestDesk.find(params[:id])
  # end

  # def edit
  #   @desk = Desk.find(params[:id])
  # end

  # def update
  #   @desk = Desk.find(params[:id])
  #   if @desk.update(desk_params)
  #     redirect_to action: "index", notice: 'Table was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  private

  def guest_desk_params
    params.require(:guest_desk).permit(:guest_id, :desk_id)
  end
end
