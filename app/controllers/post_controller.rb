class PostController < ApplicationController
  def new1
    @post = Post.new
  end

  def new2
    @post = Post.new
  end

  def new3
    @post = Post.new
  end

  def new4
    @post = Post.new
  end

  def new5
    @post = Post.new
  end

  def new6
    @post = Post.new
  end

  def new7
    @post = Post.new
  end

  def new8
    @post = Post.new
  end

  def new9
    @post = Post.new
  end

  def new10
    @post = Post.new
  end

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
      redirect_to("/#{session[:user_id]}/post/new2")
    else
      @error_message = "全ての項目を入力してください"
          @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("new1")
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
      redirect_to("/#{session[:user_id]}/post/new3")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("new2")
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
      redirect_to("/#{session[:user_id]}/post/new4")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("new3")
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
      redirect_to("/#{session[:user_id]}/post/new5")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("new4")
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
      redirect_to("/#{session[:user_id]}/post/new6")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("new5")
    end
  end

  def create6
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: 6,
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
                     )
    if @post.save
      redirect_to("/#{session[:user_id]}/post/new7")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("new6")
    end
  end

  def create7
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: 7,
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
                     )
    if @post.save
      redirect_to("/#{session[:user_id]}/post/new8")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("new7")
    end
  end

  def create8
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: 8,
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
                     )
    if @post.save
      redirect_to("/#{session[:user_id]}/post/new9")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("new8")
    end
  end

  def create9
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: 9,
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
                     )
    if @post.save
      redirect_to("/#{session[:user_id]}/post/new10")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("new9")
    end
  end

  def create10
    @post = Post.new(user_id: session[:user_id],
                     question: params[:question],
                     question_num: 10,
                     answer1: params[:answer1],
                     answer2: params[:answer2],
                     answer3: params[:answer3],
                     answer4: params[:answer4],
                     flag: params[:flag]
                     )
    if @post.save
      redirect_to("/#{session[:user_id]}/show/top")
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:question],
          @answer1 = params[:answer1],
          @answer2 = params[:answer2],
          @answer3 = params[:answer3],
          @answer4 = params[:answer4],
          @flag = params[:flag]
      render("new10")
    end
  end


end
