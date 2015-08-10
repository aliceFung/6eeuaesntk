class SessionsController < ApplicationController


  skip_before_action :require_login, :only => [:new, :create]

  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      sign_in(@user)
      flash[:success] = "You've signed in! YAY!"
      redirect_to user_path(current_user.id)
    else
      flash.now[:error] = "We couldn't sign you in."
      render :new
    end
  end

  def destroy
    sign_out
    flash[:success] = "You've signed out."
    redirect_to root_url
  end
end
