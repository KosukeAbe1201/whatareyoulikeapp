class UserController < ApplicationController
  before_action :forbid_login_user, {only: [:signup,:signup_form,:login_form,:login]}

  def new
  end

  def create
    @user = User.new(name: params[:name], password: params[:password])
    if @user.save
      flash[:notice] = "登録を完了しました"
      @user = User.find_by(name: params[:name])
      session[:user_id] = @user.id
      redirect_to("/#{@user.id}/menu")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @name = params[:name]
      @password = params[:password]
      @error_message = "名前が既に使用されている、またはパスワードに不備があります。パスワードは8文字以上で入力してください。"
      render("user/new")
    end
  end
end
