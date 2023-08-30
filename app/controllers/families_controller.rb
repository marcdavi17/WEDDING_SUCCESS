class FamiliesController < ApplicationController

  def index
    @families = Family.all
  end

  def new
    @family = Family.new # Needed to instantiate the form_with
  end

  def create
    @family = Family.new(family_params)
    @family.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to action: "index"
  end

  private

  def family_params
    params.require(:family).permit(:name, :email)
  end
end
