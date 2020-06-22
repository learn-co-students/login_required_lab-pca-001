class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to "/secret"
    else
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end
end