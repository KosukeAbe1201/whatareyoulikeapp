class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      session[:answerer] = @answer.name
      redirect_to("/#{session[:answerer_id]}/question1")
    else
      @error_message = "既に使用されている名前です"
      render("answers/show")
    end
  end

  def q1
    @post = Answer.show_question(1, session[:answerer_id])
  end

  def q2
    @post = Answer.show_question(2, session[:answerer_id])
  end

  def q3
    @post = Answer.show_question(3, session[:answerer_id])
  end

  def q4
    @post = Answer.show_question(4, session[:answerer_id])
  end

  def q5
    @post = Answer.show_question(5, session[:answerer_id])
  end

  def update
    @post = Answer.show_question(params[:answer][:question_num], session[:answerer_id])
    @answer = Answer.find_by(name: session[:answerer])
    @answer.update!(flag: params[:answer][:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:answerer]).update(correct: @answer.correct += 1)
      flash[:notice] = "正解です！"
    else
      flash[:notice] = "不正解です。正解は「"+eval("@post.answer" + @post.flag.to_s) + "」でした。"
    end

    if params[:answer][:question_num] == "5"
      redirect_to("/#{session[:answerer_id]}/result")
    else
      redirect_to("/#{session[:answerer_id]}/question#{params[:answer][:question_num].to_i + 1}")
    end
  end

  def result
    @answer = Answer.find_by(name: session[:answerer])
    @user = User.find_by(id: @answer.user_id)
  end

  def destroy
    Post.where(user_id: session[:user_id]).delete_all
    Keyword.where(user_id: session[:user_id]).delete_all
    Answer.where(incorrect: session[:user_id]).delete_all
    flash[:notice] = "クイズを削除しました"
    redirect_to root_path
  end

  private

    def answer_params
      params.require(:answer).permit(
        :name,
        :incorrect,
        :question_num,
      )
    end
end
