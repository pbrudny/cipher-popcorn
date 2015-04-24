class SessionsController < ApplicationController
  def new
  end

  def create
    @user = user.authenticate(password)
    if @user
      flash[:notice] = "You've been logged in."
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "Wrong login or password"
      redirect_to log_in_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've been logged out successfully."
    redirect_to "/"
  end

  private

  def user
    @user ||= User.find_by_email(email)
  end

  def email
    params.require(:email)
  end

  def password
    params.require(:password)
  end
end

