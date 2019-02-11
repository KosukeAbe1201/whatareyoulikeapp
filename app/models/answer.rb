class Answer < ApplicationRecord
  validates :name, { presence: true,uniqueness: true }
  def self.search_question(question_num, user_id)
    Post.find_by(question_num: question_num ,user_id: user_id)
  end
end
