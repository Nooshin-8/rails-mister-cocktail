class DosesController < ApplicationController

  # A user can add a new dose (ingredient/description pair)
  # to an existing cocktail, GET "cocktails/42/doses/new"

  # Checkout simple_form docs about f.association to easily create
  # a select dropdown for our list of ingredients.
  # POST "cocktails/42/doses"

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @doses = @cocktail.doses
      render "cocktails/show"
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
