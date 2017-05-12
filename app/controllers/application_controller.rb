class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :fetch_user

  private

  def fetch_user # method to identify current user by session
    @current_user = User.find_by_id(session[:user_id])
  end

  def authenticate_user # authenticate user before other admin functions
    if @current_user.nil?
      flash[:error] = "No admin access"
      redirect_to root_path
    end
  end

end
