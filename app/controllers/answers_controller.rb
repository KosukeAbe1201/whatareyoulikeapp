class AnswersController < ApplicationController
  def create
    @answer = Answer.new(name: params[:name],incorrect: session[:answerer_id])
    if @answer.save
      @name = Answer.find_by(name: params[:name])
      session[:answerer] = @name.name
      redirect_to("/#{session[:answerer_id]}/q1")
    else
      @error_message = "既に使用されている名前です"
      render("answers/show")
    end
  end
end
