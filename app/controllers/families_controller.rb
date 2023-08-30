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

  private

  def family_params
    params.require(:family).permit(abyme_attributes, :name, :email)
  end
end
