class Answer < ApplicationRecord
  validates :name, {presence: true,uniqueness: true}



  attr_accessor :post, :user, :flash

  def self.check_keyword()

  end

  def self.show_question(question_num, user_id)
    @post = Post.find_by(question_num: question_num ,user_id: user_id)
  end



end
