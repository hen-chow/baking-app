class IngredientsController < ApplicationController
  before_action :authenticate_user, only: [:create]

  UNITS_CONST = ["ml", "L", "g", "kg", "cup", "tsp", "Tbsp", "oz", "fl oz", "lb", ""]  # array of ingredient units

  def self.unit_select
    @units = UNITS_CONST.sort
  end

  def new
    @ingredient = Ingredient.new
    @units = UNITS_CONST.sort
  end

  def create
    params[:ingredients].each do |i|
      if !i[:qty].empty? && !i[:name].empty?
        food_item = FoodItem.find_or_create_by(name: i[:name])
        @recipe = Recipe.find(params[:recipe_id])
        @ingredients = Ingredient.create(qty: i[:qty], unit: i[:unit], food_item_id: food_item.id, recipe_id: @recipe.id)
      end
    end
    if @ingredients.save
      redirect_to new_direction_path(recipe_id: @recipe.id)
    else
      render :new
    end
  end

  def edit
    # @ingredients = Ingredient.find_by(recipe_id: params[:id])
    # @units = UNITS_CONST.sort
    # food_item = FoodItem.find(id: i.food_item_id).name
  end

  def update
  end

  private

  def clean_params
    params.require(:ingredients).permit(:qty, :food_item_id, :recipe_id, :unit)
  end
end
