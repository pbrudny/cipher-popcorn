class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Signed up successfully!'
      redirect_to log_in_path
    else
      flash[:alert] = "There was a problem creating your account. #{@user.errors.full_messages.to_sentence}"
      redirect_to :back
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end