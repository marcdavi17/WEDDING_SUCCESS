class DesksController < ApplicationController
  def index
    @desk = Desk.new # Needed to instantiate the form_with
    @wedding = Wedding.find(params[:wedding_id])
    @desks = @wedding.desks
  end

  def new
    @wedding = Wedding.find(params[:wedding_id])
    @desk = Desk.new
  end

  def create
    @desk = Desk.new(desk_params)
    @desk.wedding = current_user.weddings.last
    if @desk.save
      selected_guest_ids = params[:desk][:pending_guests]
      @desk.guests << Guest.where(id: selected_guest_ids) if selected_guest_ids.present?
      redirect_to action: "index"
    else
      render :new
    end
  end

  def show
    @wedding = Wedding.find(params[:wedding_id])
    @desk = Desk.find(params[:id])
  end

  def edit
    @wedding = Wedding.find(params[:wedding_id])
    @desk = Desk.find(params[:id])
  end

  def update
    @desk = Desk.find(params[:id])
    if @desk.update(desk_params)
      redirect_to action: "index", notice: 'Table was successfully updated.'
    else
      render :edit
    end
  end

  def assign_guests
    @desk = Desk.find(params[:id])
    @guests = Guest.where(id: params[:desk][:guest_ids])

    if @desk.guests << @guests
      respond_to do |format|
        format.js
      end
    else
      # Handle errors
    end
  end

  private

  def desk_params
    params.require(:desk).permit(:name, :capacity, :shape)
  end
end
