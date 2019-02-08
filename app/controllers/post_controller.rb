class PostController < ApplicationController
  before_action :authenticate_user
  before_action :forbid_make_quiz, only: [:create1,:create2,:create3,:create4,:create5]

  def create1
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: 1,
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
    )
    if @post.save
      redirect_to("/#{session[:user_id]}/post/q2")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
      @answer1 = params[:answer1],
      @answer2 = params[:answer2],
      @answer3 = params[:answer3],
      @answer4 = params[:answer4],
      @flag = params[:flag]
      render("q1")
    end
  end

  def create2
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: 2,
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
                     )
    if @post.save
      redirect_to("/#{session[:user_id]}/post/q3")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("q2")
    end
  end

  def create3
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: 3,
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
                     )
    if @post.save
      redirect_to("/#{session[:user_id]}/post/q4")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("q3")
    end
  end

  def create4
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: 4,
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
                     )
    if @post.save
      redirect_to("/#{session[:user_id]}/post/q5")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("q4")
    end
  end

  def create5
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: 5,
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
                     )
    if @post.save
      redirect_to("/keywords/new")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("q5")
    end
  end

  def destroy
    Post.where(user_id: session[:user_id]).delete_all
    Keyword.where(user_id: session[:user_id]).delete_all
    Answer.where(incorrect: session[:user_id]).delete_all
    flash[:notice] = "クイズを削除しました"
    redirect_to("/#{session[:user_id]}/menu")
  end
end
