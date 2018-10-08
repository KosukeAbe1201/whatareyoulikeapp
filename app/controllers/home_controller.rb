class HomeController < ApplicationController
  def top
  end

  def menu
    @account = User.find(session[:user_id])
  end
end
