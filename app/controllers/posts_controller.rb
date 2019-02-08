class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :forbid_make_quiz, except: [:destroy]

  def create
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: params[:num],
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
    )
    if @post.save
      if params[:num] == "5"
        redirect_to("/keywords/new")
      else
        redirect_to("/question#{params[:num].to_i + 1}")
      end
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
      @answer1 = params[:answer1],
      @answer2 = params[:answer2],
      @answer3 = params[:answer3],
      @answer4 = params[:answer4],
      @flag = params[:flag]
      render("q#{params[:num]}")
    end
  end

  def destroy
    Post.where(user_id: session[:user_id]).delete_all
    Keyword.where(user_id: session[:user_id]).delete_all
    Answer.where(incorrect: session[:user_id]).delete_all
    flash[:notice] = "クイズを削除しました"
    redirect_to root_path
  end
end
