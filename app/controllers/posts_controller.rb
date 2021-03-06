class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :forbid_make_quiz, except: [:destroy]

  def create
    post = @current_user.posts.build(post_params)
    if post.save
      if params[:post][:question_num] == "5"
        respond_to do |format|
          format.html { redirect_to("/keywords/new") }
          format.js
        end
      else
        respond_to do |format|
          format.html { redirect_to("/question#{params[:post][:question_num].to_i + 1}") }
          format.js
        end
      end
    else
      @error_message = "全ての項目を入力してください"
      @question = params[:post][:question],
      @answer1 = params[:post][:answer1],
      @answer2 = params[:post][:answer2],
      @answer3 = params[:post][:answer3],
      @answer4 = params[:post][:answer4],
      @flag = params[:flag]
      render("posts/q#{params[:post][:question_num]}")
    end
  end

  private

    def post_params
      params.require(:post).permit(
        :question,
        :question_num,
        :answer1,
        :answer2,
        :answer3,
        :answer4,
        :flag,
      )
    end
end
