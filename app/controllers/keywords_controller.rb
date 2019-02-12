class KeywordsController < ApplicationController
  def new
    @keyword = Keyword.new
  end

  def create
    keyword = Keyword.new(keyword_param)
    if keyword.save
      respond_to do |format|
        format.html { redirect_to("/keywords/show") }
        format.js
      end
    else
      @error_message = "合言葉が入力されていない、または既に使用されています"
      render("keywords/new")
    end
  end

  def show
    @keyword = Keyword.find_keyword_by_user_id(session[:user_id])
  end

  def form
    keyword = Keyword.find_keyword_by_keyword(params[:keyword])
    if keyword != nil
      session[:answerer_id] = keyword.user_id
      redirect_to("/answers/show")
    else
      @error_message = "合言葉が存在しません"
      render("keywords/top")
    end
  end

  private

  def keyword_param
    params.require(:keyword).permit(
      :keyword,
      :user_id
    )
  end
end
