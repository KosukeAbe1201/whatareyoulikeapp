class UserController < ApplicationController
  before_action :forbid_login_user, {only: [:signup,:signup_form,:login_form,:login]}

  #新規登録画面
  def signup

  end

  #新規ユーザー生成
  def signup_form
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
      render("signup")
    end
  end

  #ログイン画面
  def login

  end

  #ログイン生成
  def login_form
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/#{@user.id}/menu")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @name = params[:name]
      @password = params[:password]
      render("login")
    end
  end

  #ログアウト画面


  #ログアウト生成
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end

end
