class ShowController < ApplicationController

  def top
    @create = User.find(session[:user_id])
  end

  def answer
    @answer = Answer.new(name: params[:name])
    @answer.save
    @answer = Answer.find_by(name: params[:name])
    session[:user_name] = @answer.name
    redirect_to("/#{session[:user_id]}/show/q1")
  end



  def q1
    @post = Post.find_by(question_num: 1 ,user_id: session[:user_id])
  end

  def q2
    @post = Post.find_by(question_num: 2 ,user_id: session[:user_id])
  end

  def q3
    @post = Post.find_by(question_num: 3 ,user_id: session[:user_id])
  end

  def q4
    @post = Post.find_by(question_num: 4 ,user_id: session[:user_id])
  end

  def q5
    @post = Post.find_by(question_num: 5 ,user_id: session[:user_id])
  end

  def q6
    @post = Post.find_by(question_num: 6 ,user_id: session[:user_id])
  end

  def q7
    @post = Post.find_by(question_num: 7 ,user_id: session[:user_id])
  end

  def q8
    @post = Post.find_by(question_num: 8 ,user_id: session[:user_id])
  end

  def q9
    @post = Post.find_by(question_num: 9 ,user_id: session[:user_id])
  end

  def q10
    @post = Post.find_by(question_num: 10 ,user_id: session[:user_id])
  end



  def create1
    @post = Post.find_by(user_id: session[:user_id],question_num: 1)
    @answer = Answer.find_by(name: session[:user_name])
    @answer.update(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:user_name]).update(correct: @answer.correct += 1)
    else
      Answer.find_by(name: session[:user_name]).update(correct: @answer.incorrect += 1)
    end
    redirect_to("/#{session[:user_id]}/show/q2")
  end

  def create2
    @post = Post.find_by(user_id: session[:user_id],question_num: 2)
    @answer = Answer.find_by(name: session[:user_name])
    @answer.update(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:user_name]).update(correct: @answer.correct += 1)
    else
      Answer.find_by(name: session[:user_name]).update(correct: @answer.incorrect += 1)
    end
    redirect_to("/#{session[:user_id]}/show/q3")
  end

  def create3
    @post = Post.find_by(user_id: session[:user_id],question_num: 3)
    @answer = Answer.find_by(name: session[:user_name])
    @answer.update(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:user_name]).update(correct: @answer.correct += 1)
    else
      Answer.find_by(name: session[:user_name]).update(correct: @answer.incorrect += 1)
    end
    redirect_to("/#{session[:user_id]}/show/q4")
  end

  def create4
    @post = Post.find_by(user_id: session[:user_id],question_num: 4)
    @answer = Answer.find_by(name: session[:user_name])
    @answer.update(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:user_name]).update(correct: @answer.correct += 1)
    else
      Answer.find_by(name: session[:user_name]).update(correct: @answer.incorrect += 1)
    end
    redirect_to("/#{session[:user_id]}/show/q5")
  end

  def create5
    @post = Post.find_by(user_id: session[:user_id],question_num: 5)
    @answer = Answer.find_by(name: session[:user_name])
    @answer.update(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:user_name]).update(correct: @answer.correct += 1)
    else
      Answer.find_by(name: session[:user_name]).update(correct: @answer.incorrect += 1)
    end
    redirect_to("/#{session[:user_id]}/show/q6")
  end

  def create6
    @post = Post.find_by(user_id: session[:user_id],question_num: 6)
    @answer = Answer.find_by(name: session[:user_name])
    @answer.update(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:user_name]).update(correct: @answer.correct += 1)
    else
      Answer.find_by(name: session[:user_name]).update(correct: @answer.incorrect += 1)
    end
    redirect_to("/#{session[:user_id]}/show/q7")
  end

  def create7
    @post = Post.find_by(user_id: session[:user_id],question_num: 7)
    @answer = Answer.find_by(name: session[:user_name])
    @answer.update(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:user_name]).update(correct: @answer.correct += 1)
    else
      Answer.find_by(name: session[:user_name]).update(correct: @answer.incorrect += 1)
    end
    redirect_to("/#{session[:user_id]}/show/q8")
  end

  def create8
    @post = Post.find_by(user_id: session[:user_id],question_num: 8)
    @answer = Answer.find_by(name: session[:user_name])
    @answer.update(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:user_name]).update(correct: @answer.correct += 1)
    else
      Answer.find_by(name: session[:user_name]).update(correct: @answer.incorrect += 1)
    end
    redirect_to("/#{session[:user_id]}/show/q9")
  end

  def create9
    @post = Post.find_by(user_id: session[:user_id],question_num: 9)
    @answer = Answer.find_by(name: session[:user_name])
    @answer.update(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:user_name]).update(correct: @answer.correct += 1)
    else
      Answer.find_by(name: session[:user_name]).update(correct: @answer.incorrect += 1)
    end
    redirect_to("/#{session[:user_id]}/show/q10")
  end

  def create10
    @post = Post.find_by(user_id: session[:user_id],question_num: 10)
    @answer = Answer.find_by(name: session[:user_name])
    @answer.update(flag: params[:flag])
    if @answer.flag == @post.flag
      Answer.find_by(name: session[:user_name]).update(correct: @answer.correct += 1)
    else
      Answer.find_by(name: session[:user_name]).update(correct: @answer.incorrect += 1)
    end
    redirect_to("/#{session[:user_id]}/show/result")
  end

  def result
    @count = Answer.find_by(name: session[:user_name])
    @results = Answer.all
  end

end
