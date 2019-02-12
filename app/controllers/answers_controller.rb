class AnswersController < ApplicationController
  def create
    answer = Answer.new(answer_params)
    if answer.save
      session[:answerer] = answer.name
      redirect_to("/#{session[:answerer_id]}/question1")
    else
      @error_message = "既に使用されている名前です"
      render("answers/show")
    end
  end

  def q1
    @post = Answer.search_post(1, session[:answerer_id])
  end

  def q2
    @post = Answer.search_post(2, session[:answerer_id])
  end

  def q3
    @post = Answer.search_post(3, session[:answerer_id])
  end

  def q4
    @post = Answer.search_post(4, session[:answerer_id])
  end

  def q5
    @post = Answer.search_post(5, session[:answerer_id])
  end

  def update
    post = Answer.search_post(params[:answer][:question_num], session[:answerer_id])
    answer = Answer.find_answer_by_name(session[:answerer])
    answer.update!(flag: params[:answer][:flag])
    if answer.flag == post.flag
      Answer.update_correct_num(session[:answerer], answer)
      flash[:notice] = "正解です！"
    else
      flash[:notice] = "不正解です。正解は「"+eval("post.answer" + post.flag.to_s) + "」でした。"
    end

    if params[:answer][:question_num] == "5"
      respond_to do |format|
        format.html { redirect_to("/#{session[:answerer_id]}/result") }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to("/#{session[:answerer_id]}/question#{params[:answer][:question_num].to_i + 1}") }
        format.js
      end
    end
  end

  def result
    @answer = Answer.find_answer_by_name(session[:answerer])
    @user = User.find_by(id: session[:user_id])
    @keyword = Keyword.find_by(user_id: session[:user_id])
  end

  def destroy
    Answer.delete_all_questions(session[:user_id])
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
