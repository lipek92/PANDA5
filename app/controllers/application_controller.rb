class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user # make it visible in views
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  private
  def login_required
  unless current_user
    flash[:alert] = "You must first log in or register before accessing this page."
    redirect_to login_url
  end
end
end
