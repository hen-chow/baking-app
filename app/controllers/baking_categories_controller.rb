class BakingCategoriesController < ApplicationController
  before_action :authenticate_user, only: [:create, :edit, :update, :destroy]

  def index
    @baking_categories = BakingCategory.all.order(:name) # Baking categories sort alphabetically using "order by name"
  end

  def new
    @baking_category = BakingCategory.new
  end

  def create
    @baking_category = BakingCategory.create(clean_params)
    redirect_to root_path
  end

  def edit
    @baking_category = BakingCategory.find(params[:id])
  end

  def update
    @baking_category = BakingCategory.find(params[:id])
    @baking_category.update_attributes(clean_params)
    redirect_to root_path
  end

  def show
    @baking_category = BakingCategory.find(params[:id])
  end

  def destroy
    if @current_user.admin
      baking_category = BakingCategory.find(params[:id]).destroy
      flash[:success] = "You deleted #{baking_category.name}"
      redirect_to root_path
    else
      flash[:error] = "Access denied"
      redirect_to root_path
    end
  end

  private

  def clean_params
    params.require(:baking_category).permit(:name, :image)
  end

end
