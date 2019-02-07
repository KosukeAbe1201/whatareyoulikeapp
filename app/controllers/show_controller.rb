class ShowController < ApplicationController
  def top_form
    @user = Keyword.find_by(keyword: params[:keyword])
    if @user != nil
      session[:answerer_id] = @user.user_id
      @username = User.find(session[:answerer_id])
      redirect_to("/name")
    else
      @error_message = "合言葉が存在しません"
      render("keyword")
    end
  end

  def q1
    @post = Answer.show_question(1,session[:answerer_id])
  end

  def q2
    @post = Answer.show_question(2,session[:answerer_id])
  end

  def q3
    @post = Answer.show_question(3,session[:answerer_id])
  end

  def q4
    @post = Answer.show_question(4,session[:answerer_id])
  end

  def q5
    @post = Answer.show_question(5,session[:answerer_id])
  end

  def q6
    @post = Answer.show_question(6,session[:answerer_id])
  end

  def q7
    @post = Answer.show_question(7,session[:answerer_id])
  end

  def q8
    @post = Answer.show_question(8,session[:answerer_id])
  end

  def q9
    @post = Answer.show_question(9,session[:answerer_id])
  end

  def q10
    @post = Answer.show_question(10,session[:answerer_id])
  end

  def create1
    @post = Answer.show_question(1,session[:answerer_id])
    @answer = Answer.find_by(name: session[:answerer])
    @answer.update!(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:answerer]).update(correct: @answer.correct += 1)
      flash[:notice] = "正解です！"
    else
      flash[:notice] = "不正解です。正解は「"+eval("@post.answer" + @post.flag.to_s) + "」でした。"
    end
    redirect_to("/#{session[:answerer_id]}/q2")
  end

  def create2
    @post = Answer.show_question(2,session[:answerer_id])
    @answer = Answer.find_by(name: session[:answerer])
    @answer.update!(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:answerer]).update(correct: @answer.correct += 1)
      flash[:notice] = "正解です！"
    else
      flash[:notice] = "不正解です。正解は「"+eval("@post.answer" + @post.flag.to_s) + "」でした。"
    end
    redirect_to("/#{session[:answerer_id]}/q3")
  end

  def create3
    @post = Answer.show_question(3,session[:answerer_id])
    @answer = Answer.find_by(name: session[:answerer])
    @answer.update!(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:answerer]).update(correct: @answer.correct += 1)
      flash[:notice] = "正解です！"
    else
      flash[:notice] = "不正解です。正解は「"+eval("@post.answer" + @post.flag.to_s) + "」でした。"
    end
    redirect_to("/#{session[:answerer_id]}/q4")
  end

  def create4
    @post = Answer.show_question(4,session[:answerer_id])
    @answer = Answer.find_by(name: session[:answerer])
    @answer.update!(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:answerer]).update(correct: @answer.correct += 1)
      flash[:notice] = "正解です！"
    else
      flash[:notice] = "不正解です。正解は「"+eval("@post.answer" + @post.flag.to_s) + "」でした。"
    end
    redirect_to("/#{session[:answerer_id]}/q5")
  end

  def create5
    @post = Answer.show_question(5,session[:answerer_id])
    @answer = Answer.find_by(name: session[:answerer])
    @answer.update!(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:answerer]).update(correct: @answer.correct += 1)
      flash[:notice] = "正解です！"
    else
      flash[:notice] = "不正解です。正解は「"+eval("@post.answer" + @post.flag.to_s) + "」でした。"
    end
    redirect_to("/#{session[:answerer_id]}/result")
  end

  def result
    @count = Answer.find_by(name: session[:answerer])
    @results = Answer.where(incorrect: session[:answerer_id])
  end
end
