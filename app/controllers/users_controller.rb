class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(clean_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def clean_params
    params.require(:user).permit(:email, :password, :name)
  end

end
