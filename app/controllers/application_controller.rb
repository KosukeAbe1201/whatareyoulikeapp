class ApplicationController < ActionController::Base
  before_action :set_current_user
  before_action :set_posts_counter

  def set_posts_counter
    @post_counter = Post.where(user_id: session[:user_id]).count
  end

  def forbid_make_quiz
    if @post_counter >= 5
      flash[:notice] = "クイズを削除してください"
      redirect_to user_path(@current_user)
    end
  end

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user
    unless @current_user
      flash[:notice] = "ログインが必要です"
      redirect_to new_session_path
    end
  end

  def forbid_login_user
    if @current_user
      redirect_to root_path
    end
  end
end
