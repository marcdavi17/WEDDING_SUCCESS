class FamiliesController < ApplicationController

  def index
    @families = Family.all
  end

  def new
    @family = Family.new # Needed to instantiate the form_with
  end

  def create
    @family = Family.new(family_params)
    # debugger
    if @family.save # Will raise ActiveModel::ForbiddenAttributesError
      redirect_to action: "index"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    @family = Family.find(params[:id])
    if @family.update(family_params)
      redirect_to action: "index", notice: 'Family was successfully updated.'
    else
      render :edit
    end
  end

  private

  def family_params
    params.require(:family).permit(abyme_attributes, :name, :email)
  end
end
