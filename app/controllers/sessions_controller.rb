class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      # flash[:success] = "User logged in"
      redirect_to user_path(user.id)
    else
      flash[:error] = "Wrong email address or password"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:success] = "You've successfully logged out"
    redirect_to root_path
  end
end
