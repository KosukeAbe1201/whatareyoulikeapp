class Post < ApplicationRecord
  validates :question, {presence: true}
  validates :answer1, {presence: true}
  validates :answer2, {presence: true}
  validates :answer3, {presence: true}
  validates :answer4, {presence: true}
  validates :flag, {presence: true}
  belongs_to :user
end
