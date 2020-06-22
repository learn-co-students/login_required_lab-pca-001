class SessionsController < ApplicationController
  def index
    if (current_user)
      redirect_to secrets_path
    else
      redirect_to new_sessions_path
    end
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to new_sessions_path
    end
  end

  def destroy
    session.delete(:name)
  end
end
