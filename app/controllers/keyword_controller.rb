class KeywordController < ApplicationController
  def create
    @keyword = Keyword.new(user_id: session[:user_id],keyword: params[:keyword])
    if @keyword.save
      redirect_to("/#{session[:user_id]}/share")
    else
      @error_message = "合言葉が入力されていない、または既に使用されています"
      render("ready")
    end
  end

  def show
    @keyword = Keyword.find_by(user_id: session[:user_id])
  end
end
