class KeywordsController < ApplicationController
  def create
    @keyword = Keyword.new(user_id: session[:user_id],keyword: params[:keyword])
    if @keyword.save
      redirect_to("/keywords/show")
    else
      @error_message = "合言葉が入力されていない、または既に使用されています"
      render("keywords/new")
    end
  end

  def show
    @keyword = Keyword.find_by(user_id: session[:user_id])
  end

  def form
    @user = Keyword.find_by(keyword: params[:keyword])
    if @user != nil
      session[:answerer_id] = @user.user_id
      @username = User.find(session[:answerer_id])
      redirect_to("/answers/show")
    else
      @error_message = "合言葉が存在しません"
      render("keywords/top")
    end
  end
end
