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

  # def create
  #   @desk = Desk.new(desk_params)
  #   @desk.wedding = current_user.weddings.last
  #   if @desk.save
  #     redirect_to action: "index"
  #   else
  #     render :new
  #   end
  # end

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

  # private

  # def desk_params
  #   params.require(:desk).permit(:name, :capacity, :shape)
  # end
end
