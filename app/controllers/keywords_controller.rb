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
end
