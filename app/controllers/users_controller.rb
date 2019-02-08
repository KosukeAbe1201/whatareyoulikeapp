class UsersController < ApplicationController
  protect_from_forgery except: :create
  before_action :forbid_login_user

  def new
  end

  def show
  end

  def create
    @user = User.new(name: params[:name], password: params[:password])
    if @user.save
      flash[:notice] = "登録を完了しました"
      @user = User.find_by(name: params[:name])
      session[:user_id] = @user.id
      redirect_to @user
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @name = params[:name]
      @password = params[:password]
      @error_message = "名前が既に使用されている、またはパスワードに不備があります。パスワードは8文字以上で入力してください。"
      render("users/new")
    end
  end
end
