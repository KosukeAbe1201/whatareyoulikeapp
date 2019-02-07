class ShowController < ApplicationController


  #キーワード照合
  def top_form
    @user = Keyword.find_by(keyword: params[:keyword])
    if @user != nil
    session[:answerer_id] = @user.user_id
    @username = User.find(session[:answerer_id])
    redirect_to("/show/name")
    else
      @error_message = "合言葉が存在しません"
      render("show/top")
    end
  end

  #回答者名前生成
  def name_form
    @answer = Answer.new(name: params[:name],incorrect: session[:answerer_id])
    if @answer.save
    @name = Answer.find_by(name: params[:name])
    session[:answerer] = @name.name
    redirect_to("/#{session[:answerer_id]}/show/q1")
    else
      @error_message = "既に使用されている名前です"
      render("show/name")
    end
  end

  #問題画面
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


  #問題画面生成
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
    redirect_to("/#{session[:answerer_id]}/show/q2")
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
    redirect_to("/#{session[:answerer_id]}/show/q3")
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
    redirect_to("/#{session[:answerer_id]}/show/q4")
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
    redirect_to("/#{session[:answerer_id]}/show/q5")
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
    redirect_to("/#{session[:answerer_id]}/show/result")
  end


  #結果表示
  def result
    @count = Answer.find_by(name: session[:answerer])
    @results = Answer.where(incorrect: session[:answerer_id])
  end

  def create
    @question = Question.new(content: params[:content], user_id: session[:answerer_id])
    @question.save
    flash[:notice] = "質問を送りました。"
    redirect_to("/#{session[:user_id]}/show/result")
  end

  def destroy
    Question.where(user_id: session[:user_id]).delete_all
    flash[:notice] = "質問を削除しました"
    redirect_to("/#{session[:user_id]}/show/question")
  end

  def question
    @results = Answer.where(incorrect: session[:user_id])
  end

end
