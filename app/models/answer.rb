class Answer < ApplicationRecord
  validates :name, { presence: true, uniqueness: true }
  scope :update_correct_num, ->(name, answer) { find_by(name: name).update(correct: answer.correct += 1) }
  scope :find_answer_by_name, ->(params) { find_by(name: params) }

  def self.search_post(question_num, user_id)
    Post.find_by(question_num: question_num ,user_id: user_id)
  end

  def self.search_user(id)
    User.find_by(id: id)
  end

  def self.search_keyword(user_id)
    Keyword.find_by(user_id: user_id)
  end

  def self.delete_all_questions(user_id)
    Post.where(user_id: user_id).delete_all
    Keyword.where(user_id: user_id).delete_all
    Answer.where(user_id: user_id).delete_all
  end
end
