class SessionsController < ApplicationController
  include SessionsHelper
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      log_in(@user)
      redirect_to user_path(@user)
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      render("sessions/new")
    end
  end

  def destroy
    log_out if logged_in?
  end
end
