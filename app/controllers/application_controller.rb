class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  def current_user
    session[:name]
  end

  def require_login
    session[:name] = params[:name] unless params[:name].blank?
    redirect_to new_session_path if current_user.nil?
  end
end
