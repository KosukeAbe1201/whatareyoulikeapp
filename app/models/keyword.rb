class Keyword < ApplicationRecord
  validates :keyword, { presence: true, uniqueness: true }
  belongs_to :user

  scope :find_keyword_by_user_id, ->(params) { find_by(user_id: params) }
  scope :find_keyword_by_keyword, ->(params) { find_by(keyword: params) }
end
