class SessionController < ApplicationController
    def new
    end

    def create
      @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        flash[:notice] = "ログインしました"
        redirect_to("/#{@user.id}/menu")
      else
        @error_message = "メールアドレスまたはパスワードが間違っています"
        @name = params[:name]
        @password = params[:password]
        render("session/new")
      end
    end

    def destroy
      session[:user_id] = nil
      flash[:notice] = "ログアウトしました"
      redirect_to("/")
    end
end
