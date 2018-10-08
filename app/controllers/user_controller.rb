class UserController < ApplicationController
  def new
    @user = User.new
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
      @email = params[:email]
      @password = params[:password]
      @error_message = "名前、またはパスワードに不備があります。パスワードは8文字以上で入力してください。"
      render("new")
    end
  end

  def login_form
  end

  def login
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/#{@user.id}/menu")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("login_form")
    end
  end

end
