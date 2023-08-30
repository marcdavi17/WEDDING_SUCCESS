class DesksController < ApplicationController
  def index
    @desks = Desk.all
  end

  def new
    @desk = Desk.new
  end

  def create
    @desk = Desk.new(desk_params)
    if @desk.save
      redirect_to desks_path
    else
      render :new
    end
  end

  def show
    @desk = Desk.find(params[:id])
  end

  private

  def desk_params
    params.require(:desk).permit(:name, :capacity, :shape)
  end
end
